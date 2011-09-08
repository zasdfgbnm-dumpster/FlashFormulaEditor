package FMEUnits.FMEComposeds
{
	import FMEUnits.FMEComposed;
	
	public class FMEUnderset extends FMEComposed
	{
		private const setScaleRatio:Number = 0.5;
		private const mainsetSpace:Number = 10;
		private const lspace:Number = 3.3445;
		private const rspace:Number = 3.3445;
		private const uspace:Number = 3.3445;
		private const dspace:Number = 3.3445;
		private var main:FMEContainer;
		private var _set:FMEContainer;
		public function FMEUnderset(who:FMEContainer,mainLatex:String,setLatex:String)
		{
			super(who);
			
			main = new FMEContainer(this,who.level+1);
			main.ins(0,mainLatex);
			addChild(main);
			
			_set = new FMEContainer(this,who.level+1);
			_set.scaleX = setScaleRatio;
			_set.scaleY = setScaleRatio;
			_set.ins(0,setLatex);
			addChild(_set);
			
			updateLayout();
			updateHitArea();
			ignUpdate = false;
		}
		override protected function updateLayout():void{
			_set.y = uspace + main.height + mainsetSpace;
			main.y = uspace;
			if(main.width>_set.width){
				main.x = lspace;
				_set.x = lspace + main.width/2 - _set.width/2;
			}else{
				_set.x = lspace;
				main.x = lspace + _set.width/2 - main.width/2;
			}
		}
		override public function get cheight():Number{
			return uspace + main.cheight();
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
			return uspace + main.height + mainsetSpace + _set.height + dspace;
		}
		override public function get awidth():Number{
			return lspace + (main.width>_set.width?main.width:_set.width) + rspace;
		}
		override public function get Latex():String{
			return "\\underset{" + main.getLatex(0,main.length()) + "}{" + _set.getLatex(0,_set.length()) + "}";
		}
	}
}