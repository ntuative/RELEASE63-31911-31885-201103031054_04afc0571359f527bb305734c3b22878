package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_615:String;
      
      private var var_2161:String;
      
      private var var_953:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_615 = param1;
         this.var_953 = param2;
         this.var_2161 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function get race() : String
      {
         return this.var_2161;
      }
      
      public function get gender() : String
      {
         return this.var_953;
      }
   }
}
