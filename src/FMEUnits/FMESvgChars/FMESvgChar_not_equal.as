package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_not_equal extends FMESvgChar
	{
		[Embed(source="svgs/not_equal.svg")]
		public var svg:Class;
		public function FMESvgChar_not_equal(who:FMEContainer)
		{
			super(who,1.34349,1.24534,0,0,svg,43.628,"\\neq");
		}
	}
}
