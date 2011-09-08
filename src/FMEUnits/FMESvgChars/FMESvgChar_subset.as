package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_subset extends FMESvgChar
	{
		[Embed(source="svgs/subset.svg")]
		public var svg:Class;
		public function FMESvgChar_subset(who:FMEContainer)
		{
			super(who,9.05751,9.05748,0,0,svg,28.247,"\\subset");
		}
	}
}
