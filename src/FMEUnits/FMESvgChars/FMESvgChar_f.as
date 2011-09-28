package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_f extends FMESvgChar
	{
		[Embed(source="/svgs/f.svg")]
		public var svg:Class;
		public function FMESvgChar_f(who:FMEContainer)
		{
			super(who,-17.0165,-19.7505,0,0,svg,47.925,"f");
		}
	}
}
