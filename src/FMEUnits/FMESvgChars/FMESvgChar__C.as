package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__C extends FMESvgChar
	{
		[Embed(source="svgs/_C.svg")]
		public var svg:Class;
		public function FMESvgChar__C(who:FMEContainer)
		{
			super(who,7.1535,-4.0765,0,0,svg,46.216,"C");
		}
	}
}
