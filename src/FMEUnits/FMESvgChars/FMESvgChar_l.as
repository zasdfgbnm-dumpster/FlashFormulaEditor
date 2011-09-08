package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_l extends FMESvgChar
	{
		[Embed(source="svgs/l.svg")]
		public var svg:Class;
		public function FMESvgChar_l(who:FMEContainer)
		{
			super(who,4.2725,-2.3675,0,0,svg,47.925,"l");
		}
	}
}
