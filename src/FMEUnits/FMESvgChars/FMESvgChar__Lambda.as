package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Lambda extends FMESvgChar
	{
		[Embed(source="svgs/_Lambda.svg")]
		public var svg:Class;
		public function FMESvgChar__Lambda(who:FMEContainer)
		{
			super(who,-5.10243,5.68858,0,0,svg,46.216,"\\Lambda");
		}
	}
}
