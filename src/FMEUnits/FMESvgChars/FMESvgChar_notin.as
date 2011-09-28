package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_notin extends FMESvgChar
	{
		[Embed(source="/svgs/notin.svg")]
		public var svg:Class;
		public function FMESvgChar_notin(who:FMEContainer)
		{
			super(who,8.8625,8.96051,0,0,svg,42.749,"\\notin");
		}
	}
}
