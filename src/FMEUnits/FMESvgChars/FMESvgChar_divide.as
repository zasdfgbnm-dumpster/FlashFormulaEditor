package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_divide extends FMESvgChar
	{
		[Embed(source="svgs/divide.svg")]
		public var svg:Class;
		public function FMESvgChar_divide(who:FMEContainer)
		{
			super(who,1.24437,1.14769,0,0,svg,30.151,"\\div");
		}
	}
}
