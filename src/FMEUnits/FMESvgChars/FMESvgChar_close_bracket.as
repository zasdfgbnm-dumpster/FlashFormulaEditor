package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_close_bracket extends FMESvgChar
	{
		[Embed(source="/svgs/close_bracket.svg")]
		public var svg:Class;
		public function FMESvgChar_close_bracket(who:FMEContainer)
		{
			super(who,3.78453,8.17857,0,0,svg,45.386,"]");
		}
	}
}
