package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_more_eq extends FMESvgChar
	{
		[Embed(source="/svgs/more_eq.svg")]
		public var svg:Class;
		public function FMESvgChar_more_eq(who:FMEContainer)
		{
			super(who,1.29442,1.19652,0,0,svg,38.159,"\\ge");
		}
	}
}
