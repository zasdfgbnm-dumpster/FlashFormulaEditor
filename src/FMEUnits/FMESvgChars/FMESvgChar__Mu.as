package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Mu extends FMESvgChar
	{
		[Embed(source="/svgs/_Mu.svg")]
		public var svg:Class;
		public function FMESvgChar__Mu(who:FMEContainer)
		{
			super(who,-2.85646,-9.49648,0,0,svg,46.216,"\\Mu");
		}
	}
}
