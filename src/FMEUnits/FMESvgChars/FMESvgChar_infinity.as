package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_infinity extends FMESvgChar
	{
		[Embed(source="svgs/infinity.svg")]
		public var svg:Class;
		public function FMESvgChar_infinity(who:FMEContainer)
		{
			super(who,2.71068,2.66136,0,0,svg,23.755,"\\infty");
		}
	}
}
