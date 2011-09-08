package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_dim extends FMESvgChar
	{
		[Embed(source="svgs/dim.svg")]
		public var svg:Class;
		public function FMESvgChar_dim(who:FMEContainer)
		{
			super(who,3.7355,0.0245,0,0,svg,47.925,"\\dim");
		}
	}
}
