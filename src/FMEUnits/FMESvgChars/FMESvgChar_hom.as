package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_hom extends FMESvgChar
	{
		[Embed(source="svgs/hom.svg")]
		public var svg:Class;
		public function FMESvgChar_hom(who:FMEContainer)
		{
			super(who,1.0495,0.0245,0,0,svg,47.925,"\\hom");
		}
	}
}
