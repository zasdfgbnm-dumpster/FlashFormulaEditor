package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_bigcap extends FMESvgChar
	{
		[Embed(source="svgs/bigcap.svg")]
		public var svg:Class;
		public function FMESvgChar_bigcap(who:FMEContainer)
		{
			super(who,3,5,0,0,svg,47,"\\bigcap");
		}
	}
}
