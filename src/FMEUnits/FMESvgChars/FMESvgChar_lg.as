package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_lg extends FMESvgChar
	{
		[Embed(source="/svgs/lg.svg")]
		public var svg:Class;
		public function FMESvgChar_lg(who:FMEContainer)
		{
			super(who,3.3945,1.3915,0,0,svg,47.925,"\\lg");
		}
	}
}
