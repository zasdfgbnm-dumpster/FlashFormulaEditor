package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_comma extends FMESvgChar
	{
		[Embed(source="/svgs/comma.svg")]
		public var svg:Class;
		public function FMESvgChar_comma(who:FMEContainer)
		{
			super(who,5.49339,5.10252,0,0,svg,-12.573,",");
		}
	}
}
