package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_k extends FMESvgChar
	{
		[Embed(source="svgs/k.svg")]
		public var svg:Class;
		public function FMESvgChar_k(who:FMEContainer)
		{
			super(who,1.3915,-4.8095,0,0,svg,47.925,"k");
		}
	}
}
