package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_vertical_bar extends FMESvgChar
	{
		[Embed(source="svgs/vertical_bar.svg")]
		public var svg:Class;
		public function FMESvgChar_vertical_bar(who:FMEContainer)
		{
			super(who,7.9835,8.13048,0,0,svg,47.095,"|");
		}
	}
}
