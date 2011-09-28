package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Sigma extends FMESvgChar
	{
		[Embed(source="/svgs/_Sigma.svg")]
		public var svg:Class;
		public function FMESvgChar__Sigma(who:FMEContainer)
		{
			super(who,-3.05153,-6.4695,0,0,svg,46.216,"\\Sigma");
		}
	}
}
