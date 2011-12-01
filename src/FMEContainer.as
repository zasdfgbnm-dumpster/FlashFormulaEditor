package
{
	import flash.display.Sprite;
	
	public class FMEContainer extends Sprite
	{
		private var content:Array = new Array();
		private var box:boxClass = new boxClass();
		private var _level:int;
		private var _parent:FMEUnit;
		private var ignUpdate:Boolean = true;
		private var _leftc:FMEContainer = null;
		private var _rightc:FMEContainer = null;
		private var _upc:FMEContainer = null;
		private var _downc:FMEContainer = null;
		public function FMEContainer(parent:FMEUnit,level:int){
			_parent = parent;
			_level = level;
			updateBox();
			ignUpdate = false;
		}
		public function setLRUD(left:FMEContainer,right:FMEContainer,up:FMEContainer,down:FMEContainer):void{
			_leftc = left;
			_rightc = right;
			_upc = up;
			_downc = down;
		}
		public function cheight():Number{
			if(content.length==0)
				return boxClass.h/2;
			var maxcheight:Number = Number.NEGATIVE_INFINITY;
			content.forEach(function (item:FMEUnit,index:int,array:Array):void{
				if(item.cheight>maxcheight)
					maxcheight = item.cheight;
			});
			return maxcheight;
		}
		private function updateBox():void{
			if(content.length==0){
				if(_parent!=null)
					addChild(box);
				return;
			}
			if(contains(box))
				removeChild(box);
		}
		private function updateContent():void{
			var cx:Number = 0;
			for(var i:int=0;i<content.length;i++){
				(content[i] as FMEUnit).ax = cx;
				cx+=(content[i] as FMEUnit).awidth;
			}
			var ch:Number = cheight();
			content.forEach(function (item:FMEUnit,index:int,array:Array):void{
				item.cy = ch;
				item.index = index;
			});
		}
		public function ins(index:int,Latex:String):int{
			ignUpdate = true;
			var uarr:Array = FMELatexCompiler.compile(Latex,this);	
			for each (var item:FMEUnit in uarr){
				content.splice(index,0,item);
				addChild(item);
				index++;
			}
			ignUpdate = false;
			update();
			return uarr.length;
		}
		public function del(start:int,end:int):void{
			ignUpdate = true;
			var darr:Array = content.splice(start,end-start);
			darr.forEach(function(item:FMEUnit,index:int,arr:Array):void{
				removeChild(item);
			});
			ignUpdate = false;
			update();
		}
		public function getLatex(start:int,end:int):String{
			var latex:String = new String();
			var prevlatex:String = null;
			var curlatex:String;
			for(;start<end;start++){
				curlatex = (content[start] as FMEUnit).Latex;
				if(prevlatex!=null&&prevlatex.length!=0){
					if(prevlatex.charAt(0)=="\\"&&prevlatex.charAt(prevlatex.length-1).match(/[a-zA-Z]/g).length>0
						&&curlatex.charAt(0).match(/[a-zA-Z]/g).length>0){
						latex += " ";
					}
				}
				latex += curlatex;;
				prevlatex = curlatex;
			}
			return latex;
		}
		public function ax(index:int):Number{
			if(index==0)
				return 0;
			else if(index==content.length){
				var ulast:FMEUnit = content[index-1] as FMEUnit;
				return ulast.ax + ulast.awidth;
			}else
				return (content[index] as FMEUnit).ax;
		}
		public function ay(start:int,end:int):Number{
			if(start==end){
				var len:int = content.length;
				if(len==0)
					return 0;
				else if(start==len)
					return (content[start-1] as FMEUnit).ay;
				else if(start==0)
					return (content[start] as FMEUnit).ay;
				else{
					var lay:Number = (content[start-1] as FMEUnit).ay;
					var ray:Number = (content[start] as FMEUnit).ay;
					return lay<ray?lay:ray;
				}	
			}else{
				var min:Number = Number.MAX_VALUE;
				for(;start<end;start++){
					var cay:Number = (content[start] as FMEUnit).ay;
					if(cay<min)
						min = cay;
				}
				return min;
			}
		}
		public function awidth(start:int,end:int):Number{
			var w:Number = 0;
			for(;start<end;start++)
				w+=(content[start] as FMEUnit).awidth;
			return w;
		}
		public function aheight(start:int,end:int):Number{
			if(start==end){
				var len:int = content.length;
				if(len==0)
					return boxClass.h;
				else if(start==len)
					return (content[start-1] as FMEUnit).aheight;
				else if(start==0)
					return (content[start] as FMEUnit).aheight;
				else{
					var lady:Number = (content[start-1] as FMEUnit).y+(content[start-1] as FMEUnit).aheight;
					var rady:Number = (content[start] as FMEUnit).y+(content[start] as FMEUnit).aheight;
					return (lady>rady?lady:rady)-ay(start,end);
				}	
			}else{
				var max:Number = 0;
				for(var s:int=start;s<end;s++){
					var cady:Number = (content[s] as FMEUnit).y + (content[s] as FMEUnit).aheight;
					if(cady>max)
						max = cady;
				}
				return max-ay(start,end);
			}
		}
		public function update():void{
			if(!ignUpdate){
				var cursor:FMECursor = FMEScreen.scr.cursor;
				if(contains(cursor))
					removeChild(cursor);
				updateContent();
				updateBox();
				if(_parent!=null)
					_parent.update();
			}
		}
		public function length():int{
			return content.length;
		}
		public function getUplvlC():FMEContainer{
			return getParent().getParent();
		}
		public function getParent():FMEUnit{
			return _parent;
		}
		public function get level():int{
			return _level;
		}
		public function get leftc():FMEContainer{
			return _leftc;
		}
		public function get rightc():FMEContainer{
			return _rightc;
		}
		public function get upc():FMEContainer{
			return _upc;
		}
		public function get downc():FMEContainer{
			return _downc;
		}
	}
}
import flash.display.Sprite;
import flash.events.MouseEvent;

class boxClass extends Sprite{
	public static const h:Number = 70;
	public static const lspace:Number = 5;
	[Embed(source="/svgs/box.svg")]
	private var svgBox:Class;
	private var svg:Sprite = new svgBox();
	public function boxClass(){
		svg.x = lspace;
		svg.y = h/2-svg.height/2;
		hitArea = new Sprite();
		hitArea.graphics.drawRect(0,0,lspace+svg.width,h);
		addChild(hitArea);
		addChild(svg);
		addEventListener(MouseEvent.MOUSE_DOWN,function(event:MouseEvent):void{
			FMEScreen.scr.cursor.setCursor((parent as FMEContainer),0,(parent as FMEContainer),0);
			event.stopPropagation();
		});
		addEventListener(MouseEvent.MOUSE_UP,function(event:MouseEvent):void{
			event.stopPropagation();
		});
		addEventListener(MouseEvent.MOUSE_MOVE,function(event:MouseEvent):void{
			event.stopPropagation();
		});
	}
}
