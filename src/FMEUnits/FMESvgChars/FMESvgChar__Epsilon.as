package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Epsilon extends FMESvgChar
	{
		[Embed(source="svgs/_Epsilon.svg")]
		public var svg:Class;
		public function FMESvgChar__Epsilon(who:FMEContainer)
		{
			super(who,-1.83052,-2.56349,0,0,svg,46.216,"\\Epsilon");
		}
	}
}
