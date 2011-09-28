package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar__Theta extends FMESvgChar
	{
		[Embed(source="/svgs/_Theta.svg")]
		public var svg:Class;
		public function FMESvgChar__Theta(who:FMEContainer)
		{
			super(who,6.51951,-0.121478,0,0,svg,46.216,"\\Theta");
		}
	}
}
