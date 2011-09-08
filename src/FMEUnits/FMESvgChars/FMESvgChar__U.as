package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__U extends FMESvgChar
	{
		[Embed(source="svgs/_U.svg")]
		public var svg:Class;
		public function FMESvgChar__U(who:FMEContainer)
		{
			super(who,11.0605,-9.5945,0,0,svg,46.216,"U");
		}
	}
}
