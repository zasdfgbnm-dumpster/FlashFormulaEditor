package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_pi extends FMESvgChar
	{
		[Embed(source="svgs/pi.svg")]
		public var svg:Class;
		public function FMESvgChar_pi(who:FMEContainer)
		{
			super(who,2.85655,-3.54042,0,0,svg,22.681,"\\pi");
		}
	}
}
