package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Leftrightarrow extends FMESvgChar
	{
		[Embed(source="svgs/_Leftrightarrow.svg")]
		public var svg:Class;
		public function FMESvgChar__Leftrightarrow(who:FMEContainer)
		{
			super(who,7.39854,7.39744,0,0,svg,30.591,"\\Leftrightarrow");
		}
	}
}
