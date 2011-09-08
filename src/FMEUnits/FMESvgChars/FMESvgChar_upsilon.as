package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_upsilon extends FMESvgChar
	{
		[Embed(source="svgs/upsilon.svg")]
		public var svg:Class;
		public function FMESvgChar_upsilon(who:FMEContainer)
		{
			super(who,3.00352,3.10045,0,0,svg,22.681,"\\upsilon");
		}
	}
}
