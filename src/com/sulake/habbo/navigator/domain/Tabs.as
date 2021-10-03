package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_351:int = 1;
      
      public static const const_223:int = 2;
      
      public static const const_313:int = 3;
      
      public static const const_368:int = 4;
      
      public static const const_229:int = 5;
      
      public static const const_337:int = 1;
      
      public static const const_699:int = 2;
      
      public static const const_724:int = 3;
      
      public static const const_680:int = 4;
      
      public static const const_263:int = 5;
      
      public static const const_878:int = 6;
      
      public static const const_660:int = 7;
      
      public static const const_212:int = 8;
      
      public static const const_354:int = 9;
      
      public static const const_1958:int = 10;
      
      public static const const_868:int = 11;
      
      public static const const_567:int = 12;
       
      
      private var var_426:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_426 = new Array();
         this.var_426.push(new Tab(this._navigator,const_351,const_567,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_462));
         this.var_426.push(new Tab(this._navigator,const_223,const_337,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_462));
         this.var_426.push(new Tab(this._navigator,const_368,const_868,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1031));
         this.var_426.push(new Tab(this._navigator,const_313,const_263,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_462));
         this.var_426.push(new Tab(this._navigator,const_229,const_212,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_758));
         this.setSelectedTab(const_351);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_368;
      }
      
      public function get tabs() : Array
      {
         return this.var_426;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_426)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_426)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_426)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
