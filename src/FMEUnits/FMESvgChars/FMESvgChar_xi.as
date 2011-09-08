package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_xi extends FMESvgChar
	{
		[Embed(source="svgs/xi.svg")]
		public var svg:Class;
		public function FMESvgChar_xi(who:FMEContainer)
		{
			super(who,2.22142,-6.6155,0,0,svg,47.925,"\\xi");
		}
	}
}
