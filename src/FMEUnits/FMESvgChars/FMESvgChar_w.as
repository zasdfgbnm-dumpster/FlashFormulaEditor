package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_w extends FMESvgChar
	{
		[Embed(source="svgs/w.svg")]
		public var svg:Class;
		public function FMESvgChar_w(who:FMEContainer)
		{
			super(who,2.1245,-0.5595,0,0,svg,22.6805,"w");
		}
	}
}
