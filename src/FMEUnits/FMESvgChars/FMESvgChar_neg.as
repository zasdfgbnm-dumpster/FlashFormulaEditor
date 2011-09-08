package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_neg extends FMESvgChar
	{
		[Embed(source="svgs/neg.svg")]
		public var svg:Class;
		public function FMESvgChar_neg(who:FMEContainer)
		{
			super(who,9.05748,9.05845,0,0,svg,20.63,"\\neg");
		}
	}
}
