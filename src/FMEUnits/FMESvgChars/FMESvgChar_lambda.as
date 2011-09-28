package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_lambda extends FMESvgChar
	{
		[Embed(source="/svgs/lambda.svg")]
		public var svg:Class;
		public function FMESvgChar_lambda(who:FMEContainer)
		{
			super(who,-2.70949,2.12352,0,0,svg,47.925,"\\lambda");
		}
	}
}
