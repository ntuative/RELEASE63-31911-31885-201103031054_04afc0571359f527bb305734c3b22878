package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1112:int;
      
      private var var_2012:String;
      
      private var var_2013:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1112 = param1.readInteger();
         this.var_2012 = param1.readString();
         this.var_2013 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1112;
      }
      
      public function get requesterName() : String
      {
         return this.var_2012;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2013;
      }
   }
}
