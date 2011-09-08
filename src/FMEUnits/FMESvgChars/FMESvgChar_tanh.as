package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_tanh extends FMESvgChar
	{
		[Embed(source="svgs/tanh.svg")]
		public var svg:Class;
		public function FMESvgChar_tanh(who:FMEContainer)
		{
			super(who,1.3925,0.2195,0,0,svg,47.925,"\\tanh");
		}
	}
}
