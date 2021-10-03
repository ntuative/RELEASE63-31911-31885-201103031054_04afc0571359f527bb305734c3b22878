package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_359:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_502:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1110:int;
      
      private var var_2634:Boolean;
      
      private var var_409:Boolean;
      
      private var var_1675:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1110 = param2;
         this.var_2634 = param3;
         this.var_409 = param4;
         this.var_1675 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1110;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2634;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_409;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1675;
      }
   }
}
