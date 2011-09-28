package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Psi extends FMESvgChar
	{
		[Embed(source="/svgs/_Psi.svg")]
		public var svg:Class;
		public function FMESvgChar__Psi(who:FMEContainer)
		{
			super(who,13.8425,-10.9136,0,0,svg,46.216,"\\Psi");
		}
	}
}
