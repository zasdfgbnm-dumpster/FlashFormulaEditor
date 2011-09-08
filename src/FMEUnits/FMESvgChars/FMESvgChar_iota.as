package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_iota extends FMESvgChar
	{
		[Embed(source="svgs/iota.svg")]
		public var svg:Class;
		public function FMESvgChar_iota(who:FMEContainer)
		{
			super(who,4.71251,4.37053,0,0,svg,22.681,"iota");
		}
	}
}
