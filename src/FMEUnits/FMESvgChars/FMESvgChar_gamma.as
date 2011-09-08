package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_gamma extends FMESvgChar
	{
		[Embed(source="svgs/gamma.svg")]
		public var svg:Class;
		public function FMESvgChar_gamma(who:FMEContainer)
		{
			super(who,2.8085,0.415494,0,0,svg,22.681,"\\gamma");
		}
	}
}
