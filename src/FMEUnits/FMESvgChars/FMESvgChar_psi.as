package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_psi extends FMESvgChar
	{
		[Embed(source="/svgs/psi.svg")]
		public var svg:Class;
		public function FMESvgChar_psi(who:FMEContainer)
		{
			super(who,7.39757,-3.0027,0,0,svg,22.681,"\\psi");
		}
	}
}
