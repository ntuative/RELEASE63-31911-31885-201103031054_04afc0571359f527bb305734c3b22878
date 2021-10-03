package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1764:Boolean;
      
      private var _roomId:int;
      
      private var var_910:String;
      
      private var var_2369:int;
      
      private var var_2368:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1764 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_910 = param1.readString();
         this.var_2369 = param1.readInteger();
         this.var_2368 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1764;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_910;
      }
      
      public function get enterHour() : int
      {
         return this.var_2369;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2368;
      }
   }
}
