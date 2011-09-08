package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_double_quotation extends FMESvgChar
	{
		[Embed(source="svgs/double_quotation.svg")]
		public var svg:Class;
		public function FMESvgChar_double_quotation(who:FMEContainer)
		{
			super(who,6.61644,6.66453,0,0,svg,45.386,"\"");
		}
	}
}
