package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_sigma extends FMESvgChar
	{
		[Embed(source="svgs/sigma.svg")]
		public var svg:Class;
		public function FMESvgChar_sigma(who:FMEContainer)
		{
			super(who,3.05247,-3.83254,0,0,svg,22.681,"\\sigma");
		}
	}
}
