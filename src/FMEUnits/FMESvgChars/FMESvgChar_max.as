package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_max extends FMESvgChar
	{
		[Embed(source="svgs/max.svg")]
		public var svg:Class;
		public function FMESvgChar_max(who:FMEContainer)
		{
			super(who,1.2445,0.0245,0,0,svg,23.486,"\\max");
		}
	}
}
