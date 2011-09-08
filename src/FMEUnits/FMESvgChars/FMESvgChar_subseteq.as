package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_subseteq extends FMESvgChar
	{
		[Embed(source="svgs/subseteq.svg")]
		public var svg:Class;
		public function FMESvgChar_subseteq(who:FMEContainer)
		{
			super(who,9.05849,9.05751,0,0,svg,37.134,"\\subseteq");
		}
	}
}
