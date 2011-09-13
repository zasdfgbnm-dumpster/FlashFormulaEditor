package
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class FMEUnit extends Sprite
	{
		private var c:FMEContainer = null;
		private var cur:FMECursor = FMEScreen.scr.cursor;
		public var index:int;
		public function FMEUnit(who:FMEContainer){
			c = who;
			addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
			addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
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
	}
}