package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Pi extends FMESvgChar
	{
		[Embed(source="/svgs/_Pi.svg")]
		public var svg:Class;
		public function FMESvgChar__Pi(who:FMEContainer)
		{
			super(who,-2.46535,-8.76467,0,0,svg,46.216,"\\Pi");
		}
	}
}
