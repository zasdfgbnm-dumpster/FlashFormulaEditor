package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_omega extends FMESvgChar
	{
		[Embed(source="/svgs/omega.svg")]
		public var svg:Class;
		public function FMESvgChar_omega(who:FMEContainer)
		{
			super(who,3.93162,4.07737,0,0,svg,22.681,"\\omega");
		}
	}
}
