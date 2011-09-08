package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_oint extends FMESvgChar
	{
		[Embed(source="svgs/oint.svg")]
		public var svg:Class;
		public function FMESvgChar_oint(who:FMEContainer)
		{
			super(who,0,0,0,0,svg,57,"\\oint");
		}
	}
}
