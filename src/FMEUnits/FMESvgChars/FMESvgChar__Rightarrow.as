package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Rightarrow extends FMESvgChar
	{
		[Embed(source="/svgs/_Rightarrow.svg")]
		public var svg:Class;
		public function FMESvgChar__Rightarrow(who:FMEContainer)
		{
			super(who,7.73948,7.39744,0,0,svg,30.591,"\\Rightarrow");
		}
	}
}
