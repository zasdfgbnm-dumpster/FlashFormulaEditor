package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_sin extends FMESvgChar
	{
		[Embed(source="svgs/sin.svg")]
		public var svg:Class;
		public function FMESvgChar_sin(who:FMEContainer)
		{
			super(who,5.2975,0.0245,0,0,svg,47.925,"\\sin");
		}
	}
}
