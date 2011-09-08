package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_arrow extends FMESvgChar
	{
		[Embed(source="svgs/arrow.svg")]
		public var svg:Class;
		public function FMESvgChar_arrow(who:FMEContainer)
		{
			super(who,3.97947,3.9304,0,0,svg,20.435,"\\to");
		}
	}
}
