package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_varpi extends FMESvgChar
	{
		[Embed(source="svgs/varpi.svg")]
		public var svg:Class;
		public function FMESvgChar_varpi(who:FMEContainer)
		{
			super(who,1.92857,-0.512469,0,0,svg,22.681,"\\varpi");
		}
	}
}
