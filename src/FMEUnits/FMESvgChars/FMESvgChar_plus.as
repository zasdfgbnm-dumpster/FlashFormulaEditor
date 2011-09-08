package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_plus extends FMESvgChar
	{
		[Embed(source="svgs/plus.svg")]
		public var svg:Class;
		public function FMESvgChar_plus(who:FMEContainer)
		{
			super(who,1.92845,1.97752,0,0,svg,37.183,"+");
		}
	}
}
