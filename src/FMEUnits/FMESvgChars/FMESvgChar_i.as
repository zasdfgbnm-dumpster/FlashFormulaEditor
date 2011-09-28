package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_i extends FMESvgChar
	{
		[Embed(source="/svgs/i.svg")]
		public var svg:Class;
		public function FMESvgChar_i(who:FMEContainer)
		{
			super(who,4.7125,0.1225,0,0,svg,42.065,"i");
		}
	}
}
