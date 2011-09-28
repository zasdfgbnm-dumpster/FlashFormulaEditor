package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_2 extends FMESvgChar
	{
		[Embed(source="/svgs/2.svg")]
		public var svg:Class;
		public function FMESvgChar_2(who:FMEContainer)
		{
			super(who,1.9775,2.7095,0,0,svg,46.069,"2");
		}
	}
}
