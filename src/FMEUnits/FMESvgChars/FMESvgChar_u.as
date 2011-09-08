package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_u extends FMESvgChar
	{
		[Embed(source="svgs/u.svg")]
		public var svg:Class;
		public function FMESvgChar_u(who:FMEContainer)
		{
			super(who,3.3445,2.5145,0,0,svg,22.6805,"u");
		}
	}
}
