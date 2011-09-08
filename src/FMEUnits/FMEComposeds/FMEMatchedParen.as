package FMEUnits.FMEComposeds
{
	import flash.display.Sprite;
	
	public class FMEMatchedParen extends FMEMatched
	{
		[Embed(source="svgs/open_paren.svg")]
		private var oparenClass:Class;
		private var oparen:Sprite = new oparenClass();
		[Embed(source="svgs/close_paren.svg")]
		private var cparenClass:Class;
		private var cparen:Sprite = new cparenClass();
		private const lbSpace:Number = 2.27049;
		private const rbSpace:Number = 2.36845;
		private const lSpace:Number = 4.22453;
		private const rSpace:Number = 4.12651;
		public function FMEMatchedParen(who:FMEContainer, bodyLatex:String)
		{
			super(who, oparen, cparen, lSpace, rSpace, lbSpace, rbSpace, bodyLatex);
		}
		override public function get Latex():String{
			return "\\left("+body.getLatex(0,body.length())+"\\right)";
		}
	}
}