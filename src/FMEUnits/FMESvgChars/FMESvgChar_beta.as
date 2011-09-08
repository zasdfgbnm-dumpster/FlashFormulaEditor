package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_beta extends FMESvgChar
	{
		[Embed(source="svgs/beta.svg")]
		public var svg:Class;
		public function FMESvgChar_beta(who:FMEContainer)
		{
			super(who,-6.2745,-1.3915,0,0,svg,47.925,"\\beta");
		}
	}
}
