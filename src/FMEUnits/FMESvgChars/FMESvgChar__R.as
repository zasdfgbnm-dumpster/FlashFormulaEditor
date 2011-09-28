package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__R extends FMESvgChar
	{
		[Embed(source="/svgs/_R.svg")]
		public var svg:Class;
		public function FMESvgChar__R(who:FMEContainer)
		{
			super(who,-1.8795,2.7585,0,0,svg,46.216,"R");
		}
	}
}
