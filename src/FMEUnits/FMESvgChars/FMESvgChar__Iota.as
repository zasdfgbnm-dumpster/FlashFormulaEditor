package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Iota extends FMESvgChar
	{
		[Embed(source="/svgs/_Iota.svg")]
		public var svg:Class;
		public function FMESvgChar__Iota(who:FMEContainer)
		{
			super(who,-2.70949,-8.13039,0,0,svg,46.216,"I");
		}
	}
}
