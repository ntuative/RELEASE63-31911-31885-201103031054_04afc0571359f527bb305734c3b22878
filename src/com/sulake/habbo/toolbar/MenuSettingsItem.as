package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2014:String;
      
      private var var_2015:Array;
      
      private var var_2016:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2014 = param1;
         this.var_2015 = param2;
         this.var_2016 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2014;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2015;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2016;
      }
   }
}
