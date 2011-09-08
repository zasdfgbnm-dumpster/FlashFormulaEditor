package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_s extends FMESvgChar
	{
		[Embed(source="svgs/s.svg")]
		public var svg:Class;
		public function FMESvgChar_s(who:FMEContainer)
		{
			super(who,-0.5125,2.2215,0,0,svg,22.6805,"s");
		}
	}
}
