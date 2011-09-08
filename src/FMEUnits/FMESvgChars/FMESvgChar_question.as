package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_question extends FMESvgChar
	{
		[Embed(source="svgs/question.svg")]
		public var svg:Class;
		public function FMESvgChar_question(who:FMEContainer)
		{
			super(who,4.61448,4.02855,0,0,svg,45.386,"?");
		}
	}
}
