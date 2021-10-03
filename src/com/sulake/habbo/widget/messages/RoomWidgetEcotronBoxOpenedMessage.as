package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1639:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1421:String;
      
      private var var_1547:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1421 = param2;
         this.var_1547 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1421;
      }
      
      public function get classId() : int
      {
         return this.var_1547;
      }
   }
}
