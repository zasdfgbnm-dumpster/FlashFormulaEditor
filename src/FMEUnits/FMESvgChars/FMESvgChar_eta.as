package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_eta extends FMESvgChar
	{
		[Embed(source="svgs/eta.svg")]
		public var svg:Class;
		public function FMESvgChar_eta(who:FMEContainer)
		{
			super(who,3.24748,3.78453,0,0,svg,22.681,"\\eta");
		}
	}
}
