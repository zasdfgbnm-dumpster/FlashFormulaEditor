package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Eta extends FMESvgChar
	{
		[Embed(source="svgs/_Eta.svg")]
		public var svg:Class;
		public function FMESvgChar__Eta(who:FMEContainer)
		{
			super(who,-2.22145,-9.30153,0,0,svg,46.216,"\\Eta");
		}
	}
}
