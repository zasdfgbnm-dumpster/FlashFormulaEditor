package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_liminf extends FMESvgChar
	{
		[Embed(source="svgs/liminf.svg")]
		public var svg:Class;
		public function FMESvgChar_liminf(who:FMEContainer)
		{
			super(who,3.3945,-10.5715,0,0,svg,47.925,"\\liminf");
		}
	}
}
