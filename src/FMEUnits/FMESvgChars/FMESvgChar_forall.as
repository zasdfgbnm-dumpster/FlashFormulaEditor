package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_forall extends FMESvgChar
	{
		[Embed(source="/svgs/forall.svg")]
		public var svg:Class;
		public function FMESvgChar_forall(who:FMEContainer)
		{
			super(who,4.17552,4.02855,0,0,svg,39.136,"\\forall");
		}
	}
}
