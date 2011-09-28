package FMEUnits.FMEComposeds
{
	import flash.display.Sprite;
	
	public class FMEMatchedCurly extends FMEMatched
	{
		[Embed(source="/svgs/open_curly.svg")]
		private var ocurlyClass:Class;
		private var ocurly:Sprite = new ocurlyClass();
		[Embed(source="/svgs/close_curly.svg")]
		private var ccurlyClass:Class;
		private var ccurly:Sprite = new ccurlyClass();
		private const lbSpace:Number = 6.9575;
		private const rbSpace:Number = 8.76549;
		private const lSpace:Number = 13.9415;
		private const rSpace:Number = 12.1335;
		public function FMEMatchedCurly(who:FMEContainer,bodyLatex:String)
		{
			super(who, ocurly, ccurly, lSpace, rSpace, lbSpace, rbSpace, bodyLatex);
		}
		override public function get Latex():String{
			return "\\left\\{"+body.getLatex(0,body.length())+"\\right\\}";
		}
	}
}