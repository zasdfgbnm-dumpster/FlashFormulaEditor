package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_det extends FMESvgChar
	{
		[Embed(source="svgs/det.svg")]
		public var svg:Class;
		public function FMESvgChar_det(who:FMEContainer)
		{
			super(who,3.7355,-0.5615,0,0,svg,47.925,"\\det");
		}
	}
}
