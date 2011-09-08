package FMEUnits.FMEComposeds
{
	import FMEUnits.FMEComposed;
	
	import flash.display.Sprite;
	
	public class FMEVec extends FMEComposed
	{
		private var body:FMEContainer;
		private const lspace:Number = 3.3445;
		private const rspace:Number = 3.3445;
		private const uspace:Number = 3.3445;
		private const dspace:Number = 3.3445;
		private const vbSpace:Number = 3.3445;
		[Embed(source="svgs/vec.svg")]
		private var vecSgnClass:Class;
		private var vecSgn:Sprite = new vecSgnClass();
		public function FMEVec(who:FMEContainer,bodyLatex:String)
		{
			super(who);
			body = new FMEContainer(this,who.level+1);
			body.ins(0,bodyLatex);
			addChild(body);
			addChild(vecSgn);
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override protected function updateLayout():void{
			vecSgn.y = uspace;
			vecSgn.x = lspace;
			vecSgn.width = body.width;
			body.y = uspace+vecSgn.height+vbSpace;
			body.x = lspace;
		}
		override public function get cheight():Number{
			return uspace+vecSgn.height+vbSpace+body.cheight();
		}
		override public function get ax():Number{
			return x;
		}
		override public function set ax(ax:Number):void{
			x = ax;
		}
		override public function get ay():Number{
			return y;
		}
		override public function set ay(ay:Number):void{
			y = ay;
		}
		override public function get aheight():Number{
			return uspace+vecSgn.height+vbSpace+body.height+dspace;
		}
		override public function get awidth():Number{
			return body.width;
		}
		override public function get Latex():String{
			return "\\vec{"+body.getLatex(0,body.length())+"}";
		}
	}
}