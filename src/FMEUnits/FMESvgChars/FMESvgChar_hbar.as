package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_hbar extends FMESvgChar
	{
		[Embed(source="svgs/hbar.svg")]
		public var svg:Class;
		public function FMESvgChar_hbar(who:FMEContainer)
		{
			super(who,2.417,3.688,0,0,svg,47.925,"\\hbar");
		}
	}
}