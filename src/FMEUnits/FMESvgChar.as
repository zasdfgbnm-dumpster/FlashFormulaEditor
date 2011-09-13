package FMEUnits
{
	import flash.display.Sprite;

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