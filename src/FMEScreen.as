package
{
	import flash.display.Sprite;
	
	public class FMEScreen extends Sprite
	{
		private var clipboard:String = new String();
		private var content:FMEContainer = new FMEContainer(null,0);
		public var cursor:FMECursor = new FMECursor();
		public static const scr:FMEScreen = new FMEScreen();
		private function init():void{
			addChild(content);
			cursor.setCursor(content,0,content,0);
		}
		public function FMEScreen(){
			super();
			init();
		}
		public function ins(Latex:String):void{
			if(cursor.isArea())
				del();
			var c:FMEContainer = cursor.getContainer();
			var idx:int = cursor.getBeginIdx();
			var delta:int = c.ins(idx,Latex);
			cursor.setCursor(c,idx+delta,c,idx+delta);
		}
		public function del():void{
			var c:FMEContainer = cursor.getContainer();
			var lidx:int = cursor.getBeginIdx();
			if(!cursor.isArea()){
				if(lidx>=c.length())
					return;
				else
					c.del(lidx,lidx+1);
			}else{
				var ridx:int = cursor.getEndIdx();
				if(lidx>ridx){
					var temp:int = lidx;
					lidx = ridx;
					ridx = temp;
				}
				c.del(lidx,ridx);
			}
			cursor.setCursor(c,lidx,c,lidx);
		}
		public function backspace():void{
			var c:FMEContainer = cursor.getContainer();
			if(cursor.isArea()){
				del();
			}else{
				var idx:int = cursor.getBeginIdx();
				if(idx!=0){
					c.del(idx-1,idx);
					cursor.setCursor(c,idx-1,c,idx-1);
				}
			}
		}
		public function cut():void{
			copy();
			if(cursor.isArea())
				del();			
		}
		public function copy():void{
			var c:FMEContainer = cursor.getContainer();
			if(cursor.isArea()){
				var lidx:int = cursor.getBeginIdx();
				var ridx:int = cursor.getEndIdx();
				if(lidx>ridx){
					var temp:int = lidx;
					lidx = ridx;
					ridx = temp;
				}
				clipboard = c.getLatex(lidx,ridx);
			}
		}
		public function paste():void{
			ins(clipboard);
		}
		public function getLatex():String{
			var c:FMEContainer = cursor.getContainer();
			return c.getLatex(0,c.length());
		}
	}
}