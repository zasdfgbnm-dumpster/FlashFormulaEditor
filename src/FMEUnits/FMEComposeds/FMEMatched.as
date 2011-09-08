package FMEUnits.FMEComposeds
{
	import FMEUnits.FMEComposed;
	
	import flash.display.Sprite;
	
	public class FMEMatched extends FMEComposed
	{
		protected var body:FMEContainer;
		private var lspace:Number = 3.3445;
		private var rspace:Number = 3.3445;
		private const uspace:Number = 3.3445;
		private const dspace:Number = 3.3445;
		private var left:Sprite;
		private var right:Sprite;
		private var lbSpace:Number;
		private var rbSpace:Number;
		public function FMEMatched(who:FMEContainer,left:Sprite,right:Sprite,lspace:Number,rspace:Number,lbSpace:Number,rbSpace:Number,bodyLatex:String)
		{
			super(who);
			this.left = left;
			this.right = right;
			this.lbSpace = lbSpace;
			this.rbSpace = rbSpace;
			this.lspace = lspace;
			this.rspace = rspace;
			body = new FMEContainer(this,who.level+1);
			body.ins(0,bodyLatex);
			addChild(left);
			addChild(right);
			addChild(body);
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override protected function updateLayout():void{
			left.height = body.height;
			right.height = body.height;
			left.y = uspace;
			left.x = lspace;
			right.x = lspace+left.width+lbSpace+body.width+rbSpace;
			right.y = uspace;
			body.x = lspace+left.width+lbSpace;
			body.y = uspace;
		}
		override public function get cheight():Number{
			return uspace+body.cheight();
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
			return uspace+body.height+dspace;
		}
		override public function get awidth():Number{
			return lspace+left.width+lbSpace+body.width+rbSpace+right.width+rspace;
		}
	}
}