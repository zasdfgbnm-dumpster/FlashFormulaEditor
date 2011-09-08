package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_p extends FMESvgChar
	{
		[Embed(source="svgs/p.svg")]
		public var svg:Class;
		public function FMESvgChar_p(who:FMEContainer)
		{
			super(who,-10.6195,2.3195,0,0,svg,22.6805,"p");
		}
	}
}
