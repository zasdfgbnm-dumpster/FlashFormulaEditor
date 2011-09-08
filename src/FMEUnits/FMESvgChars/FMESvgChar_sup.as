package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_sup extends FMESvgChar
	{
		[Embed(source="svgs/sup.svg")]
		public var svg:Class;
		public function FMESvgChar_sup(who:FMEContainer)
		{
			super(who,5.2975,3.0025,0,0,svg,23.486,"\\sup");
		}
	}
}
