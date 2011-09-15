package FMEUnits.FMEComposeds
{
	import FMEUnits.FMEComposed;
	
	import flash.display.Sprite;
	
	public class FMESqrt extends FMEComposed
	{
		private var radix:FMEContainer;
		private var exp:FMEContainer;
		private var radSign:RadicalSign;
		private const lspace:Number = 3.3445;
		private const rspace:Number = 3.3445;
		private const uspace:Number = 3.3445;
		private const dspace:Number = 3.3445;
		private const erRatio:Number = 0.6058;
		public function FMESqrt(who:FMEContainer,radixLatex:String,expLatex:String=null)
		{
			super(who);
			radix = new FMEContainer(this,who.level+1);
			exp = null;
			addChild(radix);
			radix.ins(0,radixLatex);
			if(expLatex!=null){
				exp = new FMEContainer(this,who.level+1);
				addChild(exp);
				exp.ins(0,expLatex);
				radix.setLRUD(exp,who,exp,null);
				exp.setLRUD(who,radix,null,radix);
			}else
				radix.setLRUD(who,who,null,null);
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override protected function updateLayout():void{
			if(radSign!=null)
				removeChild(radSign);
			radSign = new RadicalSign(radix.width,radix.height);
			addChild(radSign);
			if(exp!=null){
				exp.scaleX = erRatio;
				exp.scaleY = erRatio;
				exp.x = lspace + (exp.width-radSign.expLocalX>0?0:radSign.expLocalX-exp.width);
				exp.y = uspace + (exp.height-radSign.expLocalY>0?0:radSign.expLocalY-exp.height)
			}
			radSign.y = uspace + ((exp!=null&&exp.height-radSign.expLocalY>0)?exp.height-radSign.expLocalY:0);
			radSign.x = lspace + ((exp!=null&&exp.width-radSign.expLocalX>0)?exp.width-radSign.expLocalX:0);
			radix.y = radSign.y+radSign.radLocalY;
			radix.x = radSign.x+radSign.radLocalX;
		}
		override public function get cheight():Number{
			return uspace+((exp!=null&&exp.height-radSign.expLocalY>0)?exp.height-radSign.expLocalY:0)+radSign.radLocalY+radix.cheight();
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
			return uspace+((exp!=null&&exp.height-radSign.expLocalY>0)?exp.height-radSign.expLocalY:0)+radSign.height+dspace;
		}
		override public function get awidth():Number{
			return lspace+radSign.width+(exp!=null&&exp.width-radSign.expLocalX>0?exp.width-radSign.expLocalX:0)+rspace;
		}
		override public function get Latex():String{
			return "\\sqrt"+(exp!=null?"["+exp.getLatex(0,exp.length())+"]":"")+"{"+radix.getLatex(0,radix.length())+"}";
		}
	}
}
import flash.display.Sprite;

class RadicalSign extends Sprite{
	[Embed(source="svgs/sqrt.svg")]
	private var svgClass:Class;
	private var svg:Sprite = new svgClass();
	private const radUSpace:Number = 9;
	private const radDSpace:Number = 4;
	private const radLSpace:Number = 3.3445;
	private const radRSpace:Number = 0;
	private const lineThickness:Number = 3.3445;
	private const expLocalXRatio:Number = 0.5;
	private const expLocalYRatio:Number = 0.3;
	private const lineBeginX:Number = 47;
	public function RadicalSign(radWidth:Number,radHeight:Number){
		addChild(svg);
		svg.height = lineThickness+radUSpace+radHeight+radDSpace;
		graphics.beginFill(0x000000);
		graphics.drawRect(lineBeginX,0,svg.width-lineBeginX+radLSpace+radWidth+radRSpace,lineThickness);
		graphics.endFill();
	}
	public function get expLocalX():Number{
		return expLocalXRatio*svg.width;
	}
	public function get expLocalY():Number{
		return expLocalYRatio*svg.height;		
	}
	public function get radLocalX():Number{
		return svg.width+radLSpace;
	}
	public function get radLocalY():Number{
		return lineThickness+radUSpace;
	}
}