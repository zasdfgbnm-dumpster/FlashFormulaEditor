package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_d extends FMESvgChar
	{
		[Embed(source="/svgs/d.svg")]
		public var svg:Class;
		public function FMESvgChar_d(who:FMEContainer)
		{
			super(who,2.3195,-4.5165,0,0,svg,47.925,"d");
		}
	}
}
