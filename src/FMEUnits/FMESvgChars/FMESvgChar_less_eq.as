package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_less_eq extends FMESvgChar
	{
		[Embed(source="svgs/less_eq.svg")]
		public var svg:Class;
		public function FMESvgChar_less_eq(who:FMEContainer)
		{
			super(who,1.29344,1.19652,0,0,svg,38.159,"\\le");
		}
	}
}
