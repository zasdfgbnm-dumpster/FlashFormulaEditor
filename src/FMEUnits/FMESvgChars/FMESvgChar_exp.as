package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_exp extends FMESvgChar
	{
		[Embed(source="/svgs/exp.svg")]
		public var svg:Class;
		public function FMESvgChar_exp(who:FMEContainer)
		{
			super(who,4.1255,3.0025,0,0,svg,23.486,"\\exp");
		}
	}
}
