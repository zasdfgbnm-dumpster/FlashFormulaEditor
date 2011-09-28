package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Tau extends FMESvgChar
	{
		[Embed(source="/svgs/_Tau.svg")]
		public var svg:Class;
		public function FMESvgChar__Tau(who:FMEContainer)
		{
			super(who,7.39744,-9.7405,0,0,svg,46.216,"\\Tau");
		}
	}
}
