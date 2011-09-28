package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_mapsto extends FMESvgChar
	{
		[Embed(source="/svgs/mapsto.svg")]
		public var svg:Class;
		public function FMESvgChar_mapsto(who:FMEContainer)
		{
			super(who,10.3764,7.39744,0,0,svg,25.366,"\\mapsto");
		}
	}
}
