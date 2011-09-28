package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_mid_dot extends FMESvgChar
	{
		[Embed(source="/svgs/mid_dot.svg")]
		public var svg:Class;
		public function FMESvgChar_mid_dot(who:FMEContainer)
		{
			super(who,12.8655,11.5486,0,0,svg,17.114,"\\cdot");
		}
	}
}
