package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_phi extends FMESvgChar
	{
		[Embed(source="svgs/phi.svg")]
		public var svg:Class;
		public function FMESvgChar_phi(who:FMEContainer)
		{
			super(who,3.34446,3.34446,0,0,svg,47.925,"\\phi");
		}
	}
}
