package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_t extends FMESvgChar
	{
		[Embed(source="/svgs/t.svg")]
		public var svg:Class;
		public function FMESvgChar_t(who:FMEContainer)
		{
			super(who,4.5165,-2.4655,0,0,svg,34.79,"t");
		}
	}
}
