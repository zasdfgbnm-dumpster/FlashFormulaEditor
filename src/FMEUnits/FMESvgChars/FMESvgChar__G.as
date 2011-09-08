package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__G extends FMESvgChar
	{
		[Embed(source="svgs/_G.svg")]
		public var svg:Class;
		public function FMESvgChar__G(who:FMEContainer)
		{
			super(who,7.3495,-0.6595,0,0,svg,46.216,"G");
		}
	}
}
