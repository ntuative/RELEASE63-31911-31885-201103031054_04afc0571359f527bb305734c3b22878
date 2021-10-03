package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1050:int = 1;
      
      public static const const_548:int = 2;
      
      private static const const_941:int = 5;
      
      private static const const_1298:int = 250;
      
      private static const const_1299:int = 100;
      
      private static const const_1300:int = 180;
      
      private static const const_1297:int = 200;
       
      
      private var var_345:Timer;
      
      private var var_344:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_77:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1668:int = 2;
      
      private var var_719:BitmapData;
      
      private var var_894:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_345 = new Timer(const_1298,1);
         this.var_344 = new Timer(const_1299,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_77 = param1;
         this.var_77.visible = false;
         this._assets = param2;
         this.var_345.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_344.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_894 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_719 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_345 != null)
         {
            this.var_345.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_345.stop();
            this.var_345 = null;
         }
         if(this.var_344 != null)
         {
            this.var_344.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_344.stop();
            this.var_344 = null;
         }
         this._assets = null;
         this.var_77 = null;
         this._parent = null;
         this.var_719 = null;
         this.var_894 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_77 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_77);
         }
         this._parent = param1;
         this.var_1668 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_77.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_77.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1300,param3.width),Math.min(const_1297,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_77.width - _loc6_.width) / 2;
            this.var_77.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_344.reset();
         this.var_345.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_77.visible = true;
         this._parent.addChild(this.var_77);
         this.refreshArrow(this.var_1668);
         switch(this.var_1668)
         {
            case const_1050:
               this.var_77.x = -1 * this.var_77.width - const_941;
               break;
            case const_548:
               this.var_77.x = this._parent.width + const_941;
         }
         this.var_77.y = (this._parent.height - this.var_77.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_77.visible = false;
         this.var_344.reset();
         this.var_345.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_77);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_344.reset();
         this.var_345.reset();
         this.var_345.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_344.reset();
         this.var_345.reset();
         this.var_344.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_77 == null || this.var_77.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_77.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1050:
               _loc2_.bitmap = this.var_894.clone();
               _loc2_.width = this.var_894.width;
               _loc2_.height = this.var_894.height;
               _loc2_.y = (this.var_77.height - this.var_894.height) / 2;
               _loc2_.x = this.var_77.width - 1;
               break;
            case const_548:
               _loc2_.bitmap = this.var_719.clone();
               _loc2_.width = this.var_719.width;
               _loc2_.height = this.var_719.height;
               _loc2_.y = (this.var_77.height - this.var_719.height) / 2;
               _loc2_.x = -1 * this.var_719.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
