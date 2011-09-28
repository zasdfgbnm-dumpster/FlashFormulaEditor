package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_plus_minus extends FMESvgChar
	{
		[Embed(source="/svgs/plus_minus.svg")]
		public var svg:Class;
		public function FMESvgChar_plus_minus(who:FMEContainer)
		{
			super(who,0.51341,1.83153,0,0,svg,37.183,"\\pm");
		}
	}
}
