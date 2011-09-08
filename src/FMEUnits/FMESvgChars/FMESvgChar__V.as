package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__V extends FMESvgChar
	{
		[Embed(source="svgs/_V.svg")]
		public var svg:Class;
		public function FMESvgChar__V(who:FMEContainer)
		{
			super(who,12.9155,-11.6455,0,0,svg,46.216,"V");
		}
	}
}
