package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_slash extends FMESvgChar
	{
		[Embed(source="svgs/slash.svg")]
		public var svg:Class;
		public function FMESvgChar_slash(who:FMEContainer)
		{
			super(who,0.269269,-0.2195,0,0,svg,47.095,"/");
		}
	}
}
