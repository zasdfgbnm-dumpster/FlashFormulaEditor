package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Alpha extends FMESvgChar
	{
		[Embed(source="/svgs/_Alpha.svg")]
		public var svg:Class;
		public function FMESvgChar__Alpha(who:FMEContainer)
		{
			super(who,-4.46749,5.98149,0,0,svg,46.216,"A");
		}
	}
}
