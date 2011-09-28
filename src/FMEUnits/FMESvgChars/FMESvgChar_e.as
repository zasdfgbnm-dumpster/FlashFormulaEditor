package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_e extends FMESvgChar
	{
		[Embed(source="/svgs/e.svg")]
		public var svg:Class;
		public function FMESvgChar_e(who:FMEContainer)
		{
			super(who,3.5405,0.9525,0,0,svg,22.6805,"e");
		}
	}
}
