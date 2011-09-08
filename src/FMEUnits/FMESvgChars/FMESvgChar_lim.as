package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_lim extends FMESvgChar
	{
		[Embed(source="svgs/lim.svg")]
		public var svg:Class;
		public function FMESvgChar_lim(who:FMEContainer)
		{
			super(who,3.3945,0.0245,0,0,svg,47.925,"\\lim");
		}
	}
}
