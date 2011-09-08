package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_open_bracket extends FMESvgChar
	{
		[Embed(source="svgs/open_bracket.svg")]
		public var svg:Class;
		public function FMESvgChar_open_bracket(who:FMEContainer)
		{
			super(who,8.32542,3.63756,0,0,svg,45.386,"[");
		}
	}
}
