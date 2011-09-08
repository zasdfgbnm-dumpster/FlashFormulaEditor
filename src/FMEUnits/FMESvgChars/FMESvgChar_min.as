package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_min extends FMESvgChar
	{
		[Embed(source="svgs/min.svg")]
		public var svg:Class;
		public function FMESvgChar_min(who:FMEContainer)
		{
			super(who,1.2445,0.0245,0,0,svg,47.925,"\\min");
		}
	}
}
