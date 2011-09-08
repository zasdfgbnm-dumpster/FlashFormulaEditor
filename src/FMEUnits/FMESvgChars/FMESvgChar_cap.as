package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_cap extends FMESvgChar
	{
		[Embed(source="svgs/cap.svg")]
		public var svg:Class;
		public function FMESvgChar_cap(who:FMEContainer)
		{
			super(who,9.59447,9.59453,0,0,svg,34.888,"\\cap");
		}
	}
}
