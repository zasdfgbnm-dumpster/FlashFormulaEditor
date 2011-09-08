package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_v extends FMESvgChar
	{
		[Embed(source="svgs/v.svg")]
		public var svg:Class;
		public function FMESvgChar_v(who:FMEContainer)
		{
			super(who,2.5635,-0.2685,0,0,svg,22.6805,"v");
		}
	}
}
