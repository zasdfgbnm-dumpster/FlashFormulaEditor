package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_1 extends FMESvgChar
	{
		[Embed(source="/svgs/1.svg")]
		public var svg:Class;
		public function FMESvgChar_1(who:FMEContainer)
		{
			super(who,6.5185,7.8365,0,0,svg,46.069,"1");
		}
	}
}
