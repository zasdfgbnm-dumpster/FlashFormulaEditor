package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Omicron extends FMESvgChar
	{
		[Embed(source="/svgs/_Omicron.svg")]
		public var svg:Class;
		public function FMESvgChar__Omicron(who:FMEContainer)
		{
			super(who,6.37156,0.0246406,0,0,svg,46.216,"O");
		}
	}
}
