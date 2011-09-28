package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_gcd extends FMESvgChar
	{
		[Embed(source="/svgs/gcd.svg")]
		public var svg:Class;
		public function FMESvgChar_gcd(who:FMEContainer)
		{
			super(who,3.3945,-0.6595,0,0,svg,47.925,"\\gcd");
		}
	}
}
