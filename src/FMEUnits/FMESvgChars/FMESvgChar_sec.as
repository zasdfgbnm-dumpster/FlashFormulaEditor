package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_sec extends FMESvgChar
	{
		[Embed(source="svgs/sec.svg")]
		public var svg:Class;
		public function FMESvgChar_sec(who:FMEContainer)
		{
			super(who,5.2975,2.8565,0,0,svg,23.486,"\\sec");
		}
	}
}
