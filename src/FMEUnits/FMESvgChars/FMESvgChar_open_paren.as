package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_open_paren extends FMESvgChar
	{
		[Embed(source="/svgs/open_paren.svg")]
		public var svg:Class;
		public function FMESvgChar_open_paren(who:FMEContainer)
		{
			super(who,4.22453,2.27049,0,0,svg,47.095,"(");
		}
	}
}
