package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_h extends FMESvgChar
	{
		[Embed(source="/svgs/h.svg")]
		public var svg:Class;
		public function FMESvgChar_h(who:FMEContainer)
		{
			super(who,2.4175,3.6865,0,0,svg,47.925,"h");
		}
	}
}
