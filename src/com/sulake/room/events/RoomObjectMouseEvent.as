package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_226:String = "ROE_MOUSE_CLICK";
      
      public static const const_1837:String = "ROE_MOUSE_ENTER";
      
      public static const const_490:String = "ROE_MOUSE_MOVE";
      
      public static const const_1805:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1875:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_444:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1618:String = "";
      
      private var var_2062:Boolean;
      
      private var var_2061:Boolean;
      
      private var var_2060:Boolean;
      
      private var var_2059:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1618 = param2;
         this.var_2062 = param5;
         this.var_2061 = param6;
         this.var_2060 = param7;
         this.var_2059 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1618;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2062;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2061;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2060;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2059;
      }
   }
}
