package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_and extends FMESvgChar
	{
		[Embed(source="/svgs/and.svg")]
		public var svg:Class;
		public function FMESvgChar_and(who:FMEContainer)
		{
			super(who,3.78453,3.0515,0,0,svg,45.386,"\\&");
		}
	}
}
