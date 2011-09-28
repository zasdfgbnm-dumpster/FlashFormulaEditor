package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_theta extends FMESvgChar
	{
		[Embed(source="/svgs/theta.svg")]
		public var svg:Class;
		public function FMESvgChar_theta(who:FMEContainer)
		{
			super(who,4.80949,-2.02553,0,0,svg,47.925,"\\theta");
		}
	}
}
