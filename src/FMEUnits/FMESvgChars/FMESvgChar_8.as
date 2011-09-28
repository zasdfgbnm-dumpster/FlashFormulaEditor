package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_8 extends FMESvgChar
	{
		[Embed(source="/svgs/8.svg")]
		public var svg:Class;
		public function FMESvgChar_8(who:FMEContainer)
		{
			super(who,4.2235,0.7075,0,0,svg,46.069,"8");
		}
	}
}
