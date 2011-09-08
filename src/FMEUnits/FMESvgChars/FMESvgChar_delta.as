package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_delta extends FMESvgChar
	{
		[Embed(source="svgs/delta.svg")]
		public var svg:Class;
		public function FMESvgChar_delta(who:FMEContainer)
		{
			super(who,2.7585,-0.171511,0,0,svg,47.925,"\\delta");
		}
	}
}
