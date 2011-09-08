package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_sum extends FMESvgChar
	{
		[Embed(source="svgs/sum.svg")]
		public var svg:Class;
		public function FMESvgChar_sum(who:FMEContainer)
		{
			super(who,3,5,0,0,svg,50,"\\sum");
		}
	}
}
