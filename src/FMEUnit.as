package
{
	import flash.display.Sprite;
	
	public class FMEUnit extends Sprite
	{
		private var c:FMEContainer = null;
		public var index:int;
		public function FMEUnit(who:FMEContainer){
			c = who;
		}
		public function get cheight():Number{
			return undefined;
		}
		public function get cy():Number{
			return y+cheight;
		}
		public function set cy(cy:Number):void{
			y = cy-cheight;
		}
		public function get ax():Number{
			return undefined;
		}
		public function set ax(ax:Number):void{
			
		}
		public function get ay():Number{
			return undefined;
		}
		public function set ay(ay:Number):void{
			
		}
		public function get aheight():Number{
			return undefined;
		}
		public function get awidth():Number{
			return undefined;
		}
		public function get Latex():String{
			return undefined;
		}
		public function update():void{
			if(c!=null)
				c.update();
		}
		public function getParent():FMEContainer{
			return c;
		}
	}
}