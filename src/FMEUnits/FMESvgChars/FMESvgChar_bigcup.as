package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_bigcup extends FMESvgChar
	{
		[Embed(source="svgs/bigcup.svg")]
		public var svg:Class;
		public function FMESvgChar_bigcup(who:FMEContainer)
		{
			super(who,3,5,0,0,svg,40,"\\bigcup");
		}
	}
}
