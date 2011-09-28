package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_cot extends FMESvgChar
	{
		[Embed(source="/svgs/cot.svg")]
		public var svg:Class;
		public function FMESvgChar_cot(who:FMEContainer)
		{
			super(who,2.8335,-0.5615,0,0,svg,37.915,"\\cot");
		}
	}
}
