package FMEUnits
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class FMEComposed extends FMEUnit
	{
		protected var ignUpdate:Boolean = true;
		private var cur:FMECursor = FMEScreen.scr.cursor;
		public function FMEComposed(who:FMEContainer)
		{
			super(who);
			hitArea = new Sprite();
			addChild(hitArea);
			addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
			addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
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
		protected function updateHitArea():void{
			hitArea.graphics.clear();
			hitArea.graphics.beginFill(0x000000,0);
			hitArea.graphics.drawRect(0,0,awidth,aheight);
			hitArea.x = ax-x;
			hitArea.y = ay-y;
			hitArea.graphics.endFill();
		}
		protected function updateLayout():void{
			
		}
		override public function update():void{
			if(!ignUpdate){
				updateLayout();
				updateHitArea();
				super.update();
			}
		}
	}
}