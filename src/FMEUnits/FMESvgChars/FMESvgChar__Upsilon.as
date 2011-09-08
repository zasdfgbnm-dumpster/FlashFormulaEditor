package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Upsilon extends FMESvgChar
	{
		[Embed(source="svgs/_Upsilon.svg")]
		public var svg:Class;
		public function FMESvgChar__Upsilon(who:FMEContainer)
		{
			super(who,9.3994,-11.4986,0,0,svg,46.216,"\\Upsilon");
		}
	}
}
