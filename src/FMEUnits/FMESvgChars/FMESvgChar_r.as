package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_r extends FMESvgChar
	{
		[Embed(source="/svgs/r.svg")]
		public var svg:Class;
		public function FMESvgChar_r(who:FMEContainer)
		{
			super(who,2.4655,-1.9775,0,0,svg,22.6805,"r");
		}
	}
}
