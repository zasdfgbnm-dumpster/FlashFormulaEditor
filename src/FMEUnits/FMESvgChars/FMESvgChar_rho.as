package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_rho extends FMESvgChar
	{
		[Embed(source="svgs/rho.svg")]
		public var svg:Class;
		public function FMESvgChar_rho(who:FMEContainer)
		{
			super(who,-6.66445,3.78343,0,0,svg,22.681,"rho");
		}
	}
}
