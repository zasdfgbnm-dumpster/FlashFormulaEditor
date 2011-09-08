package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_varrho extends FMESvgChar
	{
		[Embed(source="svgs/varrho.svg")]
		public var svg:Class;
		public function FMESvgChar_varrho(who:FMEContainer)
		{
			super(who,0.894514,3.34239,0,0,svg,22.681,"\\varrho");
		}
	}
}
