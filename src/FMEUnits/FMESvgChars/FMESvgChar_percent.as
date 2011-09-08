package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_percent extends FMESvgChar
	{
		[Embed(source="svgs/percent.svg")]
		public var svg:Class;
		public function FMESvgChar_percent(who:FMEContainer)
		{
			super(who,3.63749,3.4915,0,0,svg,45.386,"\\%");
		}
	}
}
