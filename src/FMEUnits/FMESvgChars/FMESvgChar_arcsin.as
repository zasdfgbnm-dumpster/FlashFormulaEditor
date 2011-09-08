package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_arcsin extends FMESvgChar
	{
		[Embed(source="svgs/arcsin.svg")]
		public var svg:Class;
		public function FMESvgChar_arcsin(who:FMEContainer)
		{
			super(who,3.9795,0.0245,0,0,svg,47.925,"\\arcsin");
		}
	}
}
