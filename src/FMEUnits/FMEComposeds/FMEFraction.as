package FMEUnits.FMEComposeds
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import FMEUnits.FMEComposed;

	public class FMEFraction extends FMEComposed
	{
		private var numerator:FMEContainer;
		private var denominator:FMEContainer;
		private var cur:FMECursor = FMEScreen.scr.cursor;
		private const lspace:Number = 3.3445;
		private const rspace:Number = 3.3445;
		private const uspace:Number = 0;
		private const dspace:Number = 0;
		private const midLineLSpace:Number = 3.3445;
		private const midLineRSpace:Number = 3.3445;
		private const midLineUSpace:Number = 3.3445;
		private const midLineDSpace:Number = 3.3445;
		private const midLineThickness:Number = 3.3445;
		private function get midLineLength():Number{
			return midLineLSpace + (numerator.width>denominator.width?numerator.width:denominator.width) + midLineRSpace;
		}
		override protected function updateLayout():void{
			graphics.clear();
			graphics.beginFill(0x000000);
			graphics.drawRect(lspace,uspace+numerator.height+midLineUSpace,midLineLength,midLineThickness);
			graphics.endFill();
			numerator.x = lspace+midLineLength/2-numerator.width/2;
			numerator.y = uspace;
			denominator.x = lspace+midLineLength/2-denominator.width/2;
			denominator.y = uspace+numerator.height+midLineUSpace+midLineThickness+midLineDSpace;
		}
		public function FMEFraction(who:FMEContainer,numeratorLatex:String,denominatorLatex:String){
			super(who);
			numerator = new FMEContainer(this,who.level+1);
			denominator = new FMEContainer(this,who.level+1);
			addChild(numerator);
			addChild(denominator);
			numerator.ins(0,numeratorLatex);
			denominator.ins(0,denominatorLatex);
			numerator.setLRUD(who,who,null,denominator);
			denominator.setLRUD(who,who,numerator,null);
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override public function get cheight():Number{
			return uspace+numerator.height+midLineUSpace+midLineThickness/2;
		}
		override public function get ax():Number{
			return x;
		}
		override public function set ax(ax:Number):void{
			x = ax;
		}
		override public function get ay():Number{
			return y;
		}
		override public function set ay(ay:Number):void{
			y = ay;
		}
		override public function get aheight():Number{
			return uspace+numerator.height+midLineUSpace+midLineThickness+midLineDSpace+denominator.height+dspace;
		}
		override public function get awidth():Number{
			return lspace+midLineLength+rspace;
		}
		override public function get Latex():String{
			return "\frac{"+numerator.getLatex(0,numerator.length())+"}{"+denominator.getLatex(0,denominator.length())+"}";
		}
	}
}