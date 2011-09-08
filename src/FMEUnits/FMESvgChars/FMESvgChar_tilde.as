package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_tilde extends FMESvgChar
	{
		[Embed(source="svgs/tilde.svg")]
		public var svg:Class;
		public function FMESvgChar_tilde(who:FMEContainer)
		{
			super(who,1.0995,1.0505,0,0,svg,10.767,"\\sim");
		}
	}
}
