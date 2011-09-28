package FMEUnits.FMESvgChars
{
	import FMEUnits.FMESvgChar;

	public class FMESvgChar_arccos extends FMESvgChar
	{
		[Embed(source="/svgs/arccos.svg")]
		public var svg:Class;
		public function FMESvgChar_arccos(who:FMEContainer)
		{
			super(who,3.9795,3.1005,0,0,svg,23.486,"\\arccos");
		}
	}
}
