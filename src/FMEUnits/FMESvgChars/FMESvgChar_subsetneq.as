package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_subsetneq extends FMESvgChar
	{
		[Embed(source="svgs/subsetneq.svg")]
		public var svg:Class;
		public function FMESvgChar_subsetneq(who:FMEContainer)
		{
			super(who,9.05852,9.05748,0,0,svg,37.134,"\\subsetneq");
		}
	}
}
