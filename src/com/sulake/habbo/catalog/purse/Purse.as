package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_188:int = 0;
       
      
      private var var_2086:int = 0;
      
      private var var_1281:Dictionary;
      
      private var var_1559:int = 0;
      
      private var var_1560:int = 0;
      
      private var var_2088:Boolean = false;
      
      private var var_2087:int = 0;
      
      private var var_2089:int = 0;
      
      public function Purse()
      {
         this.var_1281 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2086;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2086 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1559;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1559 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1560;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1560 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1559 > 0 || this.var_1560 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2088;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2088 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2087;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2087 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2089;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2089 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1281;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1281 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1281[param1];
      }
   }
}
