package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_3 extends FMESvgChar
	{
		[Embed(source="svgs/3.svg")]
		public var svg:Class;
		public function FMESvgChar_3(who:FMEContainer)
		{
			super(who,3.7355,4.2235,0,0,svg,46.069,"3");
		}
	}
}
