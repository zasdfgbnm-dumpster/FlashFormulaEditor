package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_exists extends FMESvgChar
	{
		[Embed(source="svgs/exists.svg")]
		public var svg:Class;
		public function FMESvgChar_exists(who:FMEContainer)
		{
			super(who,8.47154,12.6225,0,0,svg,38.892,"\\exists");
		}
	}
}
