package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_close_paren extends FMESvgChar
	{
		[Embed(source="/svgs/close_paren.svg")]
		public var svg:Class;
		public function FMESvgChar_close_paren(who:FMEContainer)
		{
			super(who,2.36845,4.12651,0,0,svg,47.095,")");
		}
	}
}
