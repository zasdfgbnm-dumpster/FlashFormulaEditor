package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_equivalent extends FMESvgChar
	{
		[Embed(source="/svgs/equivalent.svg")]
		public var svg:Class;
		public function FMESvgChar_equivalent(who:FMEContainer)
		{
			super(who,1.97752,1.88035,0,0,svg,28.735,"\\equiv");
		}
	}
}
