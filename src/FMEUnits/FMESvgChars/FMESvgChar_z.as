package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_z extends FMESvgChar
	{
		[Embed(source="/svgs/z.svg")]
		public var svg:Class;
		public function FMESvgChar_z(who:FMEContainer)
		{
			super(who,-2.3675,-0.9035,0,0,svg,22.6805,"z");
		}
	}
}
