package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_approx_equal extends FMESvgChar
	{
		[Embed(source="svgs/approx_equal.svg")]
		public var svg:Class;
		public function FMESvgChar_approx_equal(who:FMEContainer)
		{
			super(who,1.58665,1.44041,0,0,svg,28.442,"\\approx");
		}
	}
}
