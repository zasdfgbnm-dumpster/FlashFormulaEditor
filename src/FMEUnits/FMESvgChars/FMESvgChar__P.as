package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__P extends FMESvgChar
	{
		[Embed(source="svgs/_P.svg")]
		public var svg:Class;
		public function FMESvgChar__P(who:FMEContainer)
		{
			super(who,-1.9775,-1.4405,0,0,svg,46.216,"P");
		}
	}
}
