package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_vartheta extends FMESvgChar
	{
		[Embed(source="/svgs/vartheta.svg")]
		public var svg:Class;
		public function FMESvgChar_vartheta(who:FMEContainer)
		{
			super(who,0.414533,0.561506,0,0,svg,47.925,"\\vartheta");
		}
	}
}
