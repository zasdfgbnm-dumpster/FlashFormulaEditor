package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_exclamation extends FMESvgChar
	{
		[Embed(source="svgs/exclamation.svg")]
		public var svg:Class;
		public function FMESvgChar_exclamation(who:FMEContainer)
		{
			super(who,11.2545,11.1565,0,0,svg,45.386,"!");
		}
	}
}
