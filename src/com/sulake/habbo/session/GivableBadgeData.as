package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_298:int;
      
      private var var_2211:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_298 = param1;
         this.var_2211 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_298;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2211;
      }
   }
}
