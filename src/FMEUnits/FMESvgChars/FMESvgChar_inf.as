package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_inf extends FMESvgChar
	{
		[Embed(source="/svgs/inf.svg")]
		public var svg:Class;
		public function FMESvgChar_inf(who:FMEContainer)
		{
			super(who,3.3445,-10.5715,0,0,svg,47.925,"\\inf");
		}
	}
}
