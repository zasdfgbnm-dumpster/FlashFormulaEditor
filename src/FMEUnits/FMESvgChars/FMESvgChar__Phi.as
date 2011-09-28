package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Phi extends FMESvgChar
	{
		[Embed(source="/svgs/_Phi.svg")]
		public var svg:Class;
		public function FMESvgChar__Phi(who:FMEContainer)
		{
			super(who,8.08153,0.952375,0,0,svg,46.216,"\\Phi");
		}
	}
}
