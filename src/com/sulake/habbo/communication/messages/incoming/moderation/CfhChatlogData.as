package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1861:int;
      
      private var var_2601:int;
      
      private var var_1466:int;
      
      private var var_2600:int;
      
      private var var_114:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1861 = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this.var_1466 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_114 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1861);
      }
      
      public function get callId() : int
      {
         return this.var_1861;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2601;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1466;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2600;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_114;
      }
   }
}
