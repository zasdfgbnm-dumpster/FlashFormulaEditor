package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_4 extends FMESvgChar
	{
		[Embed(source="svgs/4.svg")]
		public var svg:Class;
		public function FMESvgChar_4(who:FMEContainer)
		{
			super(who,3.5405,0.9035,0,0,svg,46.069,"4");
		}
	}
}
