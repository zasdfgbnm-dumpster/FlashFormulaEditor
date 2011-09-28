package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_nabla extends FMESvgChar
	{
		[Embed(source="/svgs/nabla.svg")]
		public var svg:Class;
		public function FMESvgChar_nabla(who:FMEContainer)
		{
			super(who,5.54155,4.22447,0,0,svg,43.286,"\\nabla");
		}
	}
}
