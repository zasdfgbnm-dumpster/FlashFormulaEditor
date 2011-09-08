package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_dot extends FMESvgChar
	{
		[Embed(source="svgs/dot.svg")]
		public var svg:Class;
		public function FMESvgChar_dot(who:FMEContainer)
		{
			super(who,7.20237,7.10447,0,0,svg,-12.866,".");
		}
	}
}
