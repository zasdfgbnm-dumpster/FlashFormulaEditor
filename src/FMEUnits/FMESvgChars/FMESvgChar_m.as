package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_m extends FMESvgChar
	{
		[Embed(source="svgs/m.svg")]
		public var svg:Class;
		public function FMESvgChar_m(who:FMEContainer)
		{
			super(who,2.1245,3.9305,0,0,svg,22.6805,"m");
		}
	}
}
