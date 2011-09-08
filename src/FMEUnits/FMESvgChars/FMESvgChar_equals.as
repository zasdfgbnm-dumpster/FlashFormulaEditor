package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_equals extends FMESvgChar
	{
		[Embed(source="svgs/equals.svg")]
		public var svg:Class;
		public function FMESvgChar_equals(who:FMEContainer)
		{
			super(who,1.92955,1.92943,0,0,svg,20.776,"=");
		}
	}
}
