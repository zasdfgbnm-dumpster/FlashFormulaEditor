package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Omega extends FMESvgChar
	{
		[Embed(source="svgs/_Omega.svg")]
		public var svg:Class;
		public function FMESvgChar__Omega(who:FMEContainer)
		{
			super(who,1.73338,-0.561541,0,0,svg,46.216,"\\Omega");
		}
	}
}
