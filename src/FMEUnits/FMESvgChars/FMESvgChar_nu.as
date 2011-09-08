package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_nu extends FMESvgChar
	{
		[Embed(source="svgs/nu.svg")]
		public var svg:Class;
		public function FMESvgChar_nu(who:FMEContainer)
		{
			super(who,2.56346,-0.267474,0,0,svg,22.681,"\\nu");
		}
	}
}
