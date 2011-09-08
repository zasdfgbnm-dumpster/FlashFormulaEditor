package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_alpha extends FMESvgChar
	{
		[Embed(source="svgs/alpha.svg")]
		public var svg:Class;
		public function FMESvgChar_alpha(who:FMEContainer)
		{
			super(who,3.3445,1.9785,0,0,svg,22.681,"alpha");
		}
	}
}
