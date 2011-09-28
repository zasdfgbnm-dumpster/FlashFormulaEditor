package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_int extends FMESvgChar
	{
		[Embed(source="/svgs/int.svg")]
		public var svg:Class;
		public function FMESvgChar_int(who:FMEContainer)
		{
			super(who,-3.05153,-6.4695,0,0,svg,57,"\\int");
		}
	}
}
