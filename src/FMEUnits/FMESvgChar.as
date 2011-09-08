package FMEUnits
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class FMESvgChar extends FMEUnit
	{
		private var lspace:Number;
		private var rspace:Number;
		private var uspace:Number;
		private var dspace:Number;
		private var graph:Sprite;
		private var svg:Class;
		private var ch:Number;
		private var latex:String;
		private var cur:FMECursor = FMEScreen.scr.cursor;
		public function FMESvgChar(who:FMEContainer,lspace:Number,rspace:Number,uspace:Number,dspace:Number,svg:Class,ch:Number,latex:String){
			super(who);
			this.lspace = lspace;
			this.rspace = rspace;
			this.uspace = uspace;
			this.dspace = dspace;
			this.svg = svg;
			this.ch = ch;
			this.latex = latex;
			init();
		}
		private function mouseDownHandler(event:MouseEvent):void{
			var idx:int = event.localX<=hitArea.x+hitArea.width/2?index:index+1;
			cur.mouseMoveEnabled = true;
			if(!event.shiftKey){
				var p:FMEContainer = getParent();
				cur.setCursor(p,idx,p,idx);
			}
			event.stopPropagation();
		}
		private function mouseUpHandler(event:MouseEvent):void{
			var idx:int = event.localX<=hitArea.x+hitArea.width/2?index:index+1;
			cur.mouseMoveEnabled = false;
			cur.setEnd(getParent(),idx);
			event.stopPropagation();
		}
		private function mouseMoveHandler(event:MouseEvent):void{
			var idx:int = event.localX<=hitArea.x+hitArea.width/2?index:index+1;
			if(event.buttonDown){
				if(cur.mouseMoveEnabled)
					cur.setEnd(getParent(),idx);
			}else{
				if(cur.mouseMoveEnabled){
					cur.setEnd(getParent(),idx);
					cur.mouseMoveEnabled = false;
				}
			}
			event.stopPropagation();
		}
		private function init():void{
			graph = new svg();
			hitArea = new Sprite();
			hitArea.graphics.beginFill(0x000000,0);
			hitArea.graphics.drawRect(0,0,awidth,aheight);
			hitArea.mouseEnabled = false;
			addChild(hitArea);
			addChild(graph);
			if(lspace>=0){
				hitArea.x = 0;
				graph.x = lspace;
			}else{
				hitArea.x = -lspace;
				graph.x = 0;
			}
			if(uspace>=0){
				hitArea.y = 0;
				graph.y = uspace;
			}else{
				hitArea.y = -uspace;
				graph.y = 0;
			}
			addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
			addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
		}
		public override function get cheight():Number{
			return ch+uspace;
		}
		public override function get cy():Number{
			return y + cheight;
		}
		public override function set cy(cy:Number):void{
			y = cy - cheight;
		}
		public override function get ax():Number{
			return lspace>0?x:x-lspace;
		}
		public override function set ax(ax:Number):void{
			x = lspace>0?ax:ax+lspace;
		}
		public override function get ay():Number{
			return uspace>0?y:y-uspace;	
		}
		public override function set ay(ay:Number):void{
			y = uspace>0?ay:ay+uspace;
		}
		public override function get aheight():Number{
			return uspace+dspace+graph.height;
		}
		public override function get awidth():Number{
			return lspace+rspace+graph.width;
		}
		public override function get Latex():String{
			return latex;
		}		
	}
}