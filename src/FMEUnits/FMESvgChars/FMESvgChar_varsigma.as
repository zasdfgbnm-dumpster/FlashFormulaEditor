package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_varsigma extends FMESvgChar
	{
		[Embed(source="svgs/varsigma.svg")]
		public var svg:Class;
		public function FMESvgChar_varsigma(who:FMEContainer)
		{
			super(who,3.49156,-2.4175,0,0,svg,22.681,"\\varsigma");
		}
	}
}
