package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_j extends FMESvgChar
	{
		[Embed(source="svgs/j.svg")]
		public var svg:Class;
		public function FMESvgChar_j(who:FMEContainer)
		{
			super(who,-16.7725,-0.4635,0,0,svg,42.065,"j");
		}
	}
}
