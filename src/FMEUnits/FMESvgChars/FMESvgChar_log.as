package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_log extends FMESvgChar
	{
		[Embed(source="svgs/log.svg")]
		public var svg:Class;
		public function FMESvgChar_log(who:FMEContainer)
		{
			super(who,3.3945,1.3915,0,0,svg,47.925,"\\log");
		}
	}
}
