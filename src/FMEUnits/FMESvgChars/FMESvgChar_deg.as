package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_deg extends FMESvgChar
	{
		[Embed(source="/svgs/deg.svg")]
		public var svg:Class;
		public function FMESvgChar_deg(who:FMEContainer)
		{
			super(who,3.7355,1.3915,0,0,svg,47.925,"\\deg");
		}
	}
}
