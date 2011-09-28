package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_less_than extends FMESvgChar
	{
		[Embed(source="/svgs/less_than.svg")]
		public var svg:Class;
		public function FMESvgChar_less_than(who:FMEContainer)
		{
			super(who,1.92845,2.07542,0,0,svg,34.888,"<");
		}
	}
}
