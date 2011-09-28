package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_q extends FMESvgChar
	{
		[Embed(source="/svgs/q.svg")]
		public var svg:Class;
		public function FMESvgChar_q(who:FMEContainer)
		{
			super(who,2.6125,2.1725,0,0,svg,22.6805,"q");
		}
	}
}
