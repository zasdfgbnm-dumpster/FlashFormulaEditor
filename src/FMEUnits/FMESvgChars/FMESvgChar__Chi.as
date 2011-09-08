package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Chi extends FMESvgChar
	{
		[Embed(source="svgs/_Chi.svg")]
		public var svg:Class;
		public function FMESvgChar__Chi(who:FMEContainer)
		{
			super(who,-6.27443,-13.4036,0,0,svg,46.216,"\\Chi");
		}
	}
}
