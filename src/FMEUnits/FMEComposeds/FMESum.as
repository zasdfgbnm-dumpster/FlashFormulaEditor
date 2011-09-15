package FMEUnits.FMEComposeds
{
	import flash.display.Sprite;
	
	public class FMESum extends FMESumProd
	{
		[Embed(source="svgs/sum.svg")]
		private var opcls:Class;
		private var op:Sprite = new opcls();
		public function FMESum(who:FMEContainer, upLatex:String, downLatex:String)
		{
			super(who,upLatex,downLatex,op,"\\sum",3.3445,3.3445,0,0,3.3445,3.3445,55);
		}
	}
}