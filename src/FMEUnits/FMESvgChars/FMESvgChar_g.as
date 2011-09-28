package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_g extends FMESvgChar
	{
		[Embed(source="/svgs/g.svg")]
		public var svg:Class;
		public function FMESvgChar_g(who:FMEContainer)
		{
			super(who,-2.2705,-2.5145,0,0,svg,22.6805,"g");
		}
	}
}
