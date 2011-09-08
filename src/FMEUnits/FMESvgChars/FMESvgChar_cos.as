package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_cos extends FMESvgChar
	{
		[Embed(source="svgs/cos.svg")]
		public var svg:Class;
		public function FMESvgChar_cos(who:FMEContainer)
		{
			super(who,2.8335,3.1005,0,0,svg,23.486,"\\cos");
		}
	}
}
