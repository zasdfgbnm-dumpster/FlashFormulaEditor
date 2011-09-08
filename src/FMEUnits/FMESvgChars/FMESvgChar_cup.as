package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_cup extends FMESvgChar
	{
		[Embed(source="svgs/cup.svg")]
		public var svg:Class;
		public function FMESvgChar_cup(who:FMEContainer)
		{
			super(who,9.59447,9.5955,0,0,svg,34.155,"\\cup");
		}
	}
}
