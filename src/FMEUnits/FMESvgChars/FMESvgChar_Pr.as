package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_Pr extends FMESvgChar
	{
		[Embed(source="/svgs/Pr.svg")]
		public var svg:Class;
		public function FMESvgChar_Pr(who:FMEContainer)
		{
			super(who,2.0745,-1.0505,0,0,svg,47.925,"\\Pr");
		}
	}
}
