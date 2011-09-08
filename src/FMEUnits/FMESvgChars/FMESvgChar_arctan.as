package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_arctan extends FMESvgChar
	{
		[Embed(source="svgs/arctan.svg")]
		public var svg:Class;
		public function FMESvgChar_arctan(who:FMEContainer)
		{
			super(who,3.9795,0.0245,0,0,svg,37.915,"\\arctan");
		}
	}
}
