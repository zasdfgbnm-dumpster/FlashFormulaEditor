package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_omicron extends FMESvgChar
	{
		[Embed(source="svgs/omicron.svg")]
		public var svg:Class;
		public function FMESvgChar_omicron(who:FMEContainer)
		{
			super(who,3.34556,3.34556,0,0,svg,22.681,"\\omicron");
		}
	}
}
