package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_n extends FMESvgChar
	{
		[Embed(source="/svgs/n.svg")]
		public var svg:Class;
		public function FMESvgChar_n(who:FMEContainer)
		{
			super(who,2.3195,3.6375,0,0,svg,22.6805,"n");
		}
	}
}
