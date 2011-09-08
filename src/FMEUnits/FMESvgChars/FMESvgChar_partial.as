package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_partial extends FMESvgChar
	{
		[Embed(source="svgs/partial.svg")]
		public var svg:Class;
		public function FMESvgChar_partial(who:FMEContainer)
		{
			super(who,3.2473,0.854719,0,0,svg,47.095,"\\partial");
		}
	}
}
