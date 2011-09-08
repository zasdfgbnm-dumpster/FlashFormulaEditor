package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_pound extends FMESvgChar
	{
		[Embed(source="svgs/pound.svg")]
		public var svg:Class;
		public function FMESvgChar_pound(who:FMEContainer)
		{
			super(who,1.92849,1.83049,0,0,svg,45.386,"\\#");
		}
	}
}
