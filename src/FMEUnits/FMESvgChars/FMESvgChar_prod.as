package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_prod extends FMESvgChar
	{
		[Embed(source="svgs/prod.svg")]
		public var svg:Class;
		public function FMESvgChar_prod(who:FMEContainer)
		{
			super(who,3,5,0,0,svg,55,"\\prod");
		}
	}
}
