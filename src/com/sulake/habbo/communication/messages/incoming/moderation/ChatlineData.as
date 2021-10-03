package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2096:int;
      
      private var var_2095:int;
      
      private var var_2098:int;
      
      private var var_2097:String;
      
      private var var_1562:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2096 = param1.readInteger();
         this.var_2095 = param1.readInteger();
         this.var_2098 = param1.readInteger();
         this.var_2097 = param1.readString();
         this.var_1562 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2096;
      }
      
      public function get minute() : int
      {
         return this.var_2095;
      }
      
      public function get chatterId() : int
      {
         return this.var_2098;
      }
      
      public function get chatterName() : String
      {
         return this.var_2097;
      }
      
      public function get msg() : String
      {
         return this.var_1562;
      }
   }
}
