package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Gamma extends FMESvgChar
	{
		[Embed(source="/svgs/_Gamma.svg")]
		public var svg:Class;
		public function FMESvgChar__Gamma(who:FMEContainer)
		{
			super(who,-3.19753,-9.88753,0,0,svg,46.216,"\\Gamma");
		}
	}
}
