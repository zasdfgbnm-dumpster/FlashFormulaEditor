package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_minus extends FMESvgChar
	{
		[Embed(source="/svgs/minus.svg")]
		public var svg:Class;
		public function FMESvgChar_minus(who:FMEContainer)
		{
			super(who,4.17552,4.02855,0,0,svg,5.712,"-");
		}
	}
}
