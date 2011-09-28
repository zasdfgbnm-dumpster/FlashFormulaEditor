package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_apostrophe extends FMESvgChar
	{
		[Embed(source="/svgs/apostrophe.svg")]
		public var svg:Class;
		public function FMESvgChar_apostrophe(who:FMEContainer)
		{
			super(who,4.07737,4.27244,0,0,svg,45.386,"'");
		}
	}
}
