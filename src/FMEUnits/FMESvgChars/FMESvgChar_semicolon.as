package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_semicolon extends FMESvgChar
	{
		[Embed(source="/svgs/semicolon.svg")]
		public var svg:Class;
		public function FMESvgChar_semicolon(who:FMEContainer)
		{
			super(who,7.05552,6.32347,0,0,svg,23.804,";");
		}
	}
}
