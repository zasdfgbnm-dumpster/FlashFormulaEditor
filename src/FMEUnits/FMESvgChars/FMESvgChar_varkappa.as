package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_varkappa extends FMESvgChar
	{
		[Embed(source="/svgs/varkappa.svg")]
		public var svg:Class;
		public function FMESvgChar_varkappa(who:FMEContainer)
		{
			super(who,0.561506,-0.415423,0,0,svg,22.681,"\\varkappa");
		}
	}
}
