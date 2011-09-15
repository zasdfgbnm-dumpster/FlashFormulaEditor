package FMEUnits.FMEComposeds
{
	import FMEUnits.FMEComposed;
	
	import flash.display.Sprite;
	
	public class FMESumProd extends FMEComposed
	{
		private var opsvg:Sprite;
		private var upc:FMEContainer = null;
		private var downc:FMEContainer = null;
		private var lspace:Number;
		private var rspace:Number;
		private var uspace:Number;
		private var dspace:Number;
		private var uospace:Number;
		private var dospace:Number;
		private var oplatex:String;
		private var ch:Number;
		private const udScaleRatio:Number = 0.7;
		public function FMESumProd(who:FMEContainer,upLatex:String,downLatex:String,operator:Sprite,opLatex:String,
								   lspace:Number,rspace:Number,uspace:Number,dspace:Number,uospace:Number,dospace:Number,ch:Number)
		{
			super(who);
			
			if(upLatex!=null){
				upc = new FMEContainer(this,who.level+1);
				upc.ins(0,upLatex);
				addChild(upc);
			}
			if(downLatex!=null){
				downc = new FMEContainer(this,who.level+1);
				downc.ins(0,downLatex);
				addChild(downc);
			}
			if(upLatex!=null)			
				upc.setLRUD(who,who,null,downc);
			if(downLatex!=null)
				downc.setLRUD(who,who,upc,null);
					
			opsvg = operator;
			oplatex = opLatex;
			addChild(opsvg);
			this.lspace = lspace;
			this.rspace = rspace;
			this.uspace = uspace;
			this.dspace = dspace;
			this.uospace = uospace;
			this.dospace = dospace;
			this.ch = ch;
			
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override protected function updateLayout():void{
			var maxw:Number = 0;
			var upch:Number = 0;
			if(upc!=null){
				upc.scaleX = udScaleRatio;
				upc.scaleY = udScaleRatio;
				upc.y = uspace;
				maxw = upc.width;
				upch = upc.height;
			}
			opsvg.y = uspace+upch+uospace;
			if(opsvg.width>maxw)
				maxw = opsvg.width;
			if(downc!=null){
				downc.scaleX = udScaleRatio;
				downc.scaleY = udScaleRatio;
				downc.y = uspace+upch+uospace+opsvg.height+dospace;
				if(downc.width>maxw)
					maxw = downc.width;
			}
			if(upc!=null)
				upc.x = maxw/2-upc.width/2;
			opsvg.x = maxw/2-opsvg.width/2;
			if(downc!=null)
				downc.x = maxw/2-downc.width/2;
		} 
		override public function get cheight():Number{
			return uspace+(upc!=null?upc.height:0)+uospace+ch;
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
			return uspace+(upc!=null?upc.height:0)+uospace+opsvg.height+dospace+(downc!=null?downc.height:0)+dspace;
		}
		override public function get awidth():Number{
			var w:Number = 0;
			if(upc!=null)
				w = upc.width;
			if(downc!=null)
				w = downc.width>w?downc.width:w;
			w = opsvg.width>w?opsvg.width:w;
			return lspace + w + rspace;
		}
		override public function get Latex():String{
			return oplatex + (downc!=null?"_{"+downc.getLatex(0,downc.length())+"}":"") +
				(upc!=null?"^{"+upc.getLatex(0,upc.length())+"}":"");
		}
	}
}