package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__I extends FMESvgChar
	{
		[Embed(source="svgs/_I.svg")]
		public var svg:Class;
		public function FMESvgChar__I(who:FMEContainer)
		{
			super(who,-2.7095,-8.1295,0,0,svg,46.216,"I");
		}
	}
}
