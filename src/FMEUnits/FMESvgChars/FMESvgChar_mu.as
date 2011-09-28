package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_mu extends FMESvgChar
	{
		[Embed(source="/svgs/mu.svg")]
		public var svg:Class;
		public function FMESvgChar_mu(who:FMEContainer)
		{
			super(who,-4.85854,2.3195,0,0,svg,22.681,"\\mu");
		}
	}
}
