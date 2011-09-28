package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_y extends FMESvgChar
	{
		[Embed(source="/svgs/y.svg")]
		public var svg:Class;
		public function FMESvgChar_y(who:FMEContainer)
		{
			super(who,-7.5925,0.1225,0,0,svg,22.6805,"y");
		}
	}
}
