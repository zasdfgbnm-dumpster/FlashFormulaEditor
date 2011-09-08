package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_x extends FMESvgChar
	{
		[Embed(source="svgs/x.svg")]
		public var svg:Class;
		public function FMESvgChar_x(who:FMEContainer)
		{
			super(who,-3.1005,0.2195,0,0,svg,22.6805,"x");
		}
	}
}
