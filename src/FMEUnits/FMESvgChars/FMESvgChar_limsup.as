package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_limsup extends FMESvgChar
	{
		[Embed(source="svgs/limsup.svg")]
		public var svg:Class;
		public function FMESvgChar_limsup(who:FMEContainer)
		{
			super(who,3.3945,3.0025,0,0,svg,47.925,"\\limsup");
		}
	}
}
