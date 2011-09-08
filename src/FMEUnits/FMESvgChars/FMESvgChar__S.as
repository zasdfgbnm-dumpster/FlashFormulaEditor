package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__S extends FMESvgChar
	{
		[Embed(source="svgs/_S.svg")]
		public var svg:Class;
		public function FMESvgChar__S(who:FMEContainer)
		{
			super(who,1.0985,-4.6145,0,0,svg,46.216,"S");
		}
	}
}
