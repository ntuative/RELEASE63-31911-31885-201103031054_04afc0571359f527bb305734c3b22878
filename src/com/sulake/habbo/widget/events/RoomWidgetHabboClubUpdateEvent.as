package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_231:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2532:int = 0;
      
      private var var_2530:int = 0;
      
      private var var_2531:int = 0;
      
      private var var_2533:Boolean = false;
      
      private var var_2334:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_231,param6,param7);
         this.var_2532 = param1;
         this.var_2530 = param2;
         this.var_2531 = param3;
         this.var_2533 = param4;
         this.var_2334 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2532;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2530;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2531;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2533;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2334;
      }
   }
}
