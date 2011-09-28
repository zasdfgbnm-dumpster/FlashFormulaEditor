package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_coth extends FMESvgChar
	{
		[Embed(source="/svgs/coth.svg")]
		public var svg:Class;
		public function FMESvgChar_coth(who:FMEContainer)
		{
			super(who,2.8335,0.2195,0,0,svg,47.925,"\\coth");
		}
	}
}
