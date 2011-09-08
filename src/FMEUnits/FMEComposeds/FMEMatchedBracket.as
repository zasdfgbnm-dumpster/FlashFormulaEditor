package FMEUnits.FMEComposeds
{
	import flash.display.Sprite;
	
	public class FMEMatchedBracket extends FMEMatched
	{
		[Embed(source="svgs/open_bracket.svg")]
		private var obracketClass:Class;
		private var obracket:Sprite = new obracketClass();
		[Embed(source="svgs/close_bracket.svg")]
		private var cbracketClass:Class;
		private var cbracket:Sprite = new cbracketClass();
		private const lbSpace:Number = 3.78453;
		private const rbSpace:Number = 3.63756;
		private const lSpace:Number = 8.32542;
		private const rSpace:Number = 8.17857;
		public function FMEMatchedBracket(who:FMEContainer, bodyLatex:String)
		{
			super(who, obracket, cbracket, lSpace, rSpace, lbSpace, rbSpace, bodyLatex);
		}
		override public function get Latex():String{
			return "\\left["+body.getLatex(0,body.length())+"\\right]";
		}
	}
}