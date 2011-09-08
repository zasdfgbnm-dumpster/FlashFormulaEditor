package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_csc extends FMESvgChar
	{
		[Embed(source="svgs/csc.svg")]
		public var svg:Class;
		public function FMESvgChar_csc(who:FMEContainer)
		{
			super(who,2.8335,2.8565,0,0,svg,23.486,"\\csc");
		}
	}
}
