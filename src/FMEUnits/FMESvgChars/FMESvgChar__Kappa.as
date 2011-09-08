package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Kappa extends FMESvgChar
	{
		[Embed(source="svgs/_Kappa.svg")]
		public var svg:Class;
		public function FMESvgChar__Kappa(who:FMEContainer)
		{
			super(who,-2.27053,-6.56655,0,0,svg,46.216,"\\Kappa");
		}
	}
}
