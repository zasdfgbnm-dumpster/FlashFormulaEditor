package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;
	
	public class FMESvgChar_o extends FMESvgChar
	{
		[Embed(source="svgs/o.svg")]
		public var svg:Class;
		public function FMESvgChar_o(who:FMEContainer)
		{
			super(who,3.3445,3.3445,0,0,svg,22.6805,"o");
		}
	}
}