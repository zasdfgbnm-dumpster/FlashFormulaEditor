package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_kappa extends FMESvgChar
	{
		[Embed(source="/svgs/kappa.svg")]
		public var svg:Class;
		public function FMESvgChar_kappa(who:FMEContainer)
		{
			super(who,1.92949,-1.78151,0,0,svg,22.681,"\\kappa");
		}
	}
}
