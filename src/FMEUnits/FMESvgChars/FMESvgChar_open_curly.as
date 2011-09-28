package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_open_curly extends FMESvgChar
	{
		[Embed(source="/svgs/open_curly.svg")]
		public var svg:Class;
		public function FMESvgChar_open_curly(who:FMEContainer)
		{
			super(who,13.9415,6.9575,0,0,svg,47.095,"\\{");
		}
	}
}
