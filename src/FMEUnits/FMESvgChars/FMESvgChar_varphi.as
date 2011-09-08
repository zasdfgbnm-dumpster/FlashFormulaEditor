package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_varphi extends FMESvgChar
	{
		[Embed(source="svgs/varphi.svg")]
		public var svg:Class;
		public function FMESvgChar_varphi(who:FMEContainer)
		{
			super(who,4.02842,3.63853,0,0,svg,22.681,"\\varphi");
		}
	}
}
