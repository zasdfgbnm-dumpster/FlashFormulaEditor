package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Rho extends FMESvgChar
	{
		[Embed(source="svgs/_Rho.svg")]
		public var svg:Class;
		public function FMESvgChar__Rho(who:FMEContainer)
		{
			super(who,-1.97756,-1.43947,0,0,svg,46.216,"\\Rho");
		}
	}
}
