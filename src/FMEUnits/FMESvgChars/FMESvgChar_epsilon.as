package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_epsilon extends FMESvgChar
	{
		[Embed(source="svgs/epsilon.svg")]
		public var svg:Class;
		public function FMESvgChar_epsilon(who:FMEContainer)
		{
			super(who,3.3445,-4.36949,0,0,svg,22.681,"\\epsilon");
		}
	}
}
