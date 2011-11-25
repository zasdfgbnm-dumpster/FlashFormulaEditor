package
{
	
	import flash.display.LineScaleMode;
	import flash.display.Sprite;
	
	public class FMECursor extends Sprite
	{
		private var bc:FMEContainer;
		private var ec:FMEContainer;
		private var bidx:int;
		private var eidx:int;
		public var mouseMoveEnabled:Boolean = false;
		private function update():void{
			var c:FMEContainer = getContainer();
			var lidx:int = getBeginIdx();
			var ridx:int = getEndIdx();
			if(lidx>ridx){
				var temp:int = lidx;
				lidx = ridx;
				ridx = temp;
			}
			x = c.ax(lidx);
			y = c.ay(lidx,ridx);
			graphics.clear();
			graphics.lineStyle(3,0x0000FF,1,false,LineScaleMode.NONE);
			var h:Number = c.aheight(lidx,ridx); 
			if(!isArea()){
				graphics.moveTo(0,0);
				graphics.lineTo(0,h);
			}else{
				var w:Number = c.awidth(lidx,ridx);
				graphics.beginFill(0x0000FF,0.3);
				graphics.drawRect(0,0,w,h);
				graphics.endFill();
			}
			c.addChildAt(this,0);
		}
		private function beginAt():int{
			var c:FMEContainer = getContainer();
			if(bc==c)
				return bidx;
			var beg:FMEContainer = bc;
			while(beg.getUplvlC()!=c)
				beg = beg.getUplvlC();
			return beg.getParent().index;
		}
		private function endAt():int{
			var c:FMEContainer = getContainer();
			if(ec==c)
				return eidx;
			var end:FMEContainer = ec;
			while(end.getUplvlC()!=c)
				end = end.getUplvlC();
			return end.getParent().index;
		}
		public function setBegin(c:FMEContainer,index:int):void{
			bc = c;
			bidx = index;
			update();
		}
		public function setEnd(c:FMEContainer,index:int):void{
			ec = c;
			eidx = index;
			update();
		}
		public function setCursor(bc:FMEContainer,bidx:int,ec:FMEContainer,eidx:int):void{
			this.bc = bc;
			this.bidx = bidx;
			this.ec = ec;
			this.eidx = eidx;
			update();
		}
		public function getContainer():FMEContainer{
			var beg:FMEContainer = bc;
			var end:FMEContainer = ec;
			while(beg.level!=end.level){
				if(beg.level>end.level)
					beg = beg.getUplvlC();
				else
					end = end.getUplvlC();
			}
			while(beg!=end){
				beg = beg.getUplvlC();
				end = end.getUplvlC();
			}
			return beg;
		}
		public function getBeginIdx():int{
			var c:FMEContainer = getContainer();
			if(bc==c){
				return bidx;
			}else{
				var bat:int = beginAt();
				var eat:int = endAt();
				if(ec==c&&eat==bat)
					return bat+1;
				else if(bat<=eat)
					return bat;
				else
					return bat+1;
			}
		}
		public function getEndIdx():int{
			var c:FMEContainer = getContainer();
			if(ec==c){
				return eidx;
			}else{
				var bat:int = beginAt();
				var eat:int = endAt();
				if(bc==c&&eat==bat)
					return eat+1;
				else if(eat<bat)
					return eat;
				else
					return eat+1;
			}
		}
		public function isArea():Boolean{
			return getBeginIdx()!=getEndIdx();
		}
	}
}
