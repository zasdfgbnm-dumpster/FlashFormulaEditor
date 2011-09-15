package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_times extends FMESvgChar
	{
		[Embed(source="svgs/times.svg")]
		public var svg:Class;
		public function FMESvgChar_times(who:FMEContainer)
		{
			super(who,8.17943,8.27757,0,0,svg,22.66,"\\times");
		}
	}
}
