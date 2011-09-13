package FMEUnits
{
	import flash.display.Sprite;

	public class FMEComposed extends FMEUnit
	{
		protected var ignUpdate:Boolean = true;
		public function FMEComposed(who:FMEContainer)
		{
			super(who);
			hitArea = new Sprite();
			addChild(hitArea);
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