package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_tan extends FMESvgChar
	{
		[Embed(source="svgs/tan.svg")]
		public var svg:Class;
		public function FMESvgChar_tan(who:FMEContainer)
		{
			super(who,1.3925,0.0245,0,0,svg,37.915,"\\tan");
		}
	}
}
