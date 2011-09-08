package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_hbar extends FMESvgChar
	{
		[Embed(source="svgs/hbar.svg")]
		public var svg:Class;
		public function FMESvgChar_hbar(who:FMEContainer)
		{
			super(who,7.9835,4.41942,0,0,svg,46.46,"\\hbar");
		}
	}
}
