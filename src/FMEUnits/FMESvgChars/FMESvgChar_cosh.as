package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_cosh extends FMESvgChar
	{
		[Embed(source="/svgs/cosh.svg")]
		public var svg:Class;
		public function FMESvgChar_cosh(who:FMEContainer)
		{
			super(who,2.8335,0.2195,0,0,svg,47.925,"\\cosh");
		}
	}
}
