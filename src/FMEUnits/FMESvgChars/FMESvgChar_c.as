package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_c extends FMESvgChar
	{
		[Embed(source="svgs/c.svg")]
		public var svg:Class;
		public function FMESvgChar_c(who:FMEContainer)
		{
			super(who,3.1495,1.3915,0,0,svg,22.6805,"c");
		}
	}
}
