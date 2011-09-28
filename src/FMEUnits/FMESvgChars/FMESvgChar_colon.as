package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_colon extends FMESvgChar
	{
		[Embed(source="/svgs/colon.svg")]
		public var svg:Class;
		public function FMESvgChar_colon(who:FMEContainer)
		{
			super(who,8.71531,8.27659,0,0,svg,23.755,":");
		}
	}
}
