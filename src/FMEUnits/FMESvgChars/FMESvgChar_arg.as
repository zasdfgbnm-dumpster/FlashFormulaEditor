package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_arg extends FMESvgChar
	{
		[Embed(source="/svgs/arg.svg")]
		public var svg:Class;
		public function FMESvgChar_arg(who:FMEContainer)
		{
			super(who,3.9795,1.3915,0,0,svg,23.486,"\\arg");
		}
	}
}
