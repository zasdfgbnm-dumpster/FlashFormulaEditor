package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_because extends FMESvgChar
	{
		[Embed(source="svgs/because.svg")]
		public var svg:Class;
		public function FMESvgChar_because(who:FMEContainer)
		{
			super(who,18.0915,19.8664,0,0,svg,46.8,"\\because");
		}
	}
}
