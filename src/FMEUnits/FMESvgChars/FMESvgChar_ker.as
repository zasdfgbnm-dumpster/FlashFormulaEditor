package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_ker extends FMESvgChar
	{
		[Embed(source="svgs/ker.svg")]
		public var svg:Class;
		public function FMESvgChar_ker(who:FMEContainer)
		{
			super(who,1.2445,-1.0505,0,0,svg,47.925,"\\ker");
		}
	}
}
