package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_emptyset extends FMESvgChar
	{
		[Embed(source="svgs/emptyset.svg")]
		public var svg:Class;
		public function FMESvgChar_emptyset(who:FMEContainer)
		{
			super(who,7.73948,7.73948,0,0,svg,47.485,"\\emptyset");
		}
	}
}
