package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_more_than extends FMESvgChar
	{
		[Embed(source="svgs/more_than.svg")]
		public var svg:Class;
		public function FMESvgChar_more_than(who:FMEContainer)
		{
			super(who,1.92845,2.07445,0,0,svg,34.888,">");
		}
	}
}
