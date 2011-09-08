package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_tau extends FMESvgChar
	{
		[Embed(source="svgs/tau.svg")]
		public var svg:Class;
		public function FMESvgChar_tau(who:FMEContainer)
		{
			super(who,2.9055,-3.58852,0,0,svg,22.681,"\\tau");
		}
	}
}
