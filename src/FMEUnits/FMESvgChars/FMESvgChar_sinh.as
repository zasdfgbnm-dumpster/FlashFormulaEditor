package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_sinh extends FMESvgChar
	{
		[Embed(source="/svgs/sinh.svg")]
		public var svg:Class;
		public function FMESvgChar_sinh(who:FMEContainer)
		{
			super(who,5.2975,0.2195,0,0,svg,47.925,"\\sinh");
		}
	}
}
