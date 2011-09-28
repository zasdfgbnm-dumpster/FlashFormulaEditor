package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_propto extends FMESvgChar
	{
		[Embed(source="/svgs/propto.svg")]
		public var svg:Class;
		public function FMESvgChar_propto(who:FMEContainer)
		{
			super(who,7.15342,6.17747,0,0,svg,29.565,"\\propto");
		}
	}
}
