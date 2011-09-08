package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_hence extends FMESvgChar
	{
		[Embed(source="svgs/hence.svg")]
		public var svg:Class;
		public function FMESvgChar_hence(who:FMEContainer)
		{
			super(who,19.3118,19.8664,0,0,svg,46.8,"\\therefore");
		}
	}
}
