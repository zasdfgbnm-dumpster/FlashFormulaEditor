package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_zeta extends FMESvgChar
	{
		[Embed(source="/svgs/zeta.svg")]
		public var svg:Class;
		public function FMESvgChar_zeta(who:FMEContainer)
		{
			super(who,2.71049,-12.9635,0,0,svg,47.925,"\\zeta");
		}
	}
}
