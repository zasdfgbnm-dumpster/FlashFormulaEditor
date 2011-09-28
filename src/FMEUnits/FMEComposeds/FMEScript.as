package FMEUnits.FMEComposeds
{
	import FMEUnits.FMEComposed;
	
	public class FMEScript extends FMEComposed
	{
		private const superScaleRatio:Number = 0.6058;
		private const subScaleRatio:Number = 0.6058;
		private const superDownLocalY:Number = 15;
		private const subUpLocalH:Number = 15;
		private const mainScriptSpace:Number = 3.3445;
		private const lspace:Number = 3.3445;
		private const rspace:Number = 3.3445;
		private const uspace:Number = 3.3445;
		private const dspace:Number = 3.3445;
		private var main:FMEContainer = null;
		private var superscript:FMEContainer = null;
		private var subscript:FMEContainer = null;
		public function FMEScript(who:FMEContainer,mainLatex:String,superscriptLatex:String,subscriptLatex:String)
		{
			super(who);
			main = new FMEContainer(this,who.level+1);
			main.ins(0,mainLatex);
			addChild(main);
			if(superscriptLatex!=null){
				superscript = new FMEContainer(this,who.level+1);
				superscript.scaleX = superScaleRatio;
				superscript.scaleY = superScaleRatio;
				superscript.ins(0,superscriptLatex);
				addChild(superscript);
			}
			if(subscriptLatex!=null){
				subscript = new FMEContainer(this,who.level+1);
				subscript.scaleX = subScaleRatio;
				subscript.scaleY = subScaleRatio;
				subscript.ins(0,subscriptLatex);
				addChild(subscript);
			}
			var udown:FMEContainer = (subscript==null?null:subscript);
			var dup:FMEContainer = (superscript==null?null:superscript);
			if(superscript!=null){
				superscript.setLRUD(main,who,null,udown);
				main.setLRUD(who,superscript,dup,udown);
			}
			if(subscript!=null){
				subscript.setLRUD(main,who,dup,null);
				main.setLRUD(who,subscript,dup,udown);
			}
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override protected function updateLayout():void{
			main.x = lspace;
			if(superscript!=null){
				superscript.x = lspace + main.width + mainScriptSpace;
				if(superscript.height>superDownLocalY){
					superscript.y = uspace;
					main.y = uspace + superscript.height - superDownLocalY;
				}else{
					superscript.y = uspace + superDownLocalY - superscript.height;
					main.y = uspace;
				}
			}else{
				main.y = uspace;
			}
			if(subscript!=null){
				subscript.x = lspace + main.width + mainScriptSpace;
				subscript.y = main.y + main.height - subUpLocalH;
			}
		}
		override public function get cheight():Number{
			if(superscript==null||superscript.height<=superDownLocalY)
				return uspace + main.cheight();
			else
				return uspace + superscript.height - superDownLocalY + main.cheight();
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
			var retval:Number = uspace;
			if(superscript==null||superscript.height<=superDownLocalY)
				retval +=  main.height;
			else
				retval += superscript.height - superDownLocalY + main.height;
			if(subscript!=null&&subscript.height>subUpLocalH)
				retval += subscript.height - subUpLocalH;
			retval += dspace;
			return retval;
		}
		override public function get awidth():Number{
			var maxswidth:Number = 0;
			if(superscript!=null)
				maxswidth = superscript.width;
			if(subscript!=null&&subscript.width>maxswidth)
				maxswidth = subscript.width;
			return lspace + main.width + mainScriptSpace + maxswidth + rspace;
		}
		override public function get Latex():String{
			var retval:String = "{" + main.getLatex(0,main.length()) + "}";
			if(superscript!=null)
				retval += "^{" + superscript.getLatex(0,superscript.length()) + "}";
			if(subscript!=null)
				retval += "_{" + subscript.getLatex(0,subscript.length()) + "}";
			return retval;
		}
	}
}
