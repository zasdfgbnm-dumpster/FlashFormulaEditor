package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_chi extends FMESvgChar
	{
		[Embed(source="/svgs/chi.svg")]
		public var svg:Class;
		public function FMESvgChar_chi(who:FMEContainer)
		{
			super(who,-8.96059,-3.29543,0,0,svg,22.681,"\\chi");
		}
	}
}
