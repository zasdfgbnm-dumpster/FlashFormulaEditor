package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_b extends FMESvgChar
	{
		[Embed(source="svgs/b.svg")]
		public var svg:Class;
		public function FMESvgChar_b(who:FMEContainer)
		{
			super(who,3.0515,2.6605,0,0,svg,47.925,"b");
		}
	}
}
