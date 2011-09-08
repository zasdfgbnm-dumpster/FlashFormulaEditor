package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Delta extends FMESvgChar
	{
		[Embed(source="svgs/_Delta.svg")]
		public var svg:Class;
		public function FMESvgChar__Delta(who:FMEContainer)
		{
			super(who,-3.93056,7.15349,0,0,svg,46.216,"\\Delta");
		}
	}
}
