package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_953:int;
      
      private var var_747:Boolean;
      
      private var var_1677:Boolean;
      
      private var var_615:String;
      
      private var var_1269:int;
      
      private var var_1902:String;
      
      private var var_1779:String;
      
      private var var_1778:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_953 = param1.readInteger();
         this.var_747 = param1.readBoolean();
         this.var_1677 = param1.readBoolean();
         this.var_615 = param1.readString();
         this.var_1269 = param1.readInteger();
         this.var_1902 = param1.readString();
         this.var_1779 = param1.readString();
         this.var_1778 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_953;
      }
      
      public function get online() : Boolean
      {
         return this.var_747;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1677;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function get categoryId() : int
      {
         return this.var_1269;
      }
      
      public function get motto() : String
      {
         return this.var_1902;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1779;
      }
      
      public function get realName() : String
      {
         return this.var_1778;
      }
   }
}
