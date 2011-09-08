package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_close_curly extends FMESvgChar
	{
		[Embed(source="svgs/close_curly.svg")]
		public var svg:Class;
		public function FMESvgChar_close_curly(who:FMEContainer)
		{
			super(who,8.76549,12.1335,0,0,svg,47.095,"\\}");
		}
	}
}
