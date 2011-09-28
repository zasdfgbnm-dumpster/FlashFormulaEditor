package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_in extends FMESvgChar
	{
		[Embed(source="/svgs/in.svg")]
		public var svg:Class;
		public function FMESvgChar_in(who:FMEContainer)
		{
			super(who,8.8625,8.9605,0,0,svg,34.155,"\\in");
		}
	}
}
