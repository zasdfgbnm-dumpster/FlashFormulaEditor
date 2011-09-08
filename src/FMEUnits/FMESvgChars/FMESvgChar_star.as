package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_star extends FMESvgChar
	{
		[Embed(source="svgs/star.svg")]
		public var svg:Class;
		public function FMESvgChar_star(who:FMEContainer)
		{
			super(who,7.2025,7.05546,0,0,svg,47.095,"*");
		}
	}
}
