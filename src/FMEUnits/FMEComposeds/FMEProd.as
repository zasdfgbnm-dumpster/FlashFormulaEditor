package FMEUnits.FMEComposeds
{
	import flash.display.Sprite;
	
	public class FMEProd extends FMESumProd
	{
		[Embed(source="/svgs/prod.svg")]
		private var opcls:Class;
		private var op:Sprite = new opcls();
		public function FMEProd(who:FMEContainer, upLatex:String, downLatex:String)
		{
			super(who,upLatex,downLatex,op,"\\prod",3.3445,3.3445,0,0,3.3445,3.3445,55);
		}
	}
}