package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_varepsilon extends FMESvgChar
	{
		[Embed(source="svgs/varepsilon.svg")]
		public var svg:Class;
		public function FMESvgChar_varepsilon(who:FMEContainer)
		{
			super(who,1.48948,-0.121478,0,0,svg,22.681,"\\varepsilon");
		}
	}
}
