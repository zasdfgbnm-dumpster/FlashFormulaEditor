package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_dollar extends FMESvgChar
	{
		[Embed(source="svgs/dollar.svg")]
		public var svg:Class;
		public function FMESvgChar_dollar(who:FMEContainer)
		{
			super(who,5.39549,5.05351,0,0,svg,49.438,"\\$");
		}
	}
}
