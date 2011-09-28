package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_backslash extends FMESvgChar
	{
		[Embed(source="/svgs/backslash.svg")]
		public var svg:Class;
		public function FMESvgChar_backslash(who:FMEContainer)
		{
			super(who,0.269514,-0.171526,0,0,svg,47.095,"\\backslash");
		}
	}
}
