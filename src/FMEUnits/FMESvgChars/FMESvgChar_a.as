package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_a extends FMESvgChar
	{
		[Embed(source="svgs/a.svg")]
		public var svg:Class;
		public function FMESvgChar_a(who:FMEContainer)
		{
			super(who,2.7585,2.6605,0,0,svg,22.6805,"a");
		}
	}
}
