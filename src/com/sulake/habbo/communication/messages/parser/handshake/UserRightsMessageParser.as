package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_1205:Boolean;
      
      private var var_978:Array = null;
      
      private var var_2334:int;
      
      private var var_1914:int;
      
      public function UserRightsMessageParser()
      {
         super();
         this.var_978 = [];
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Boolean = param1.readBoolean();
         if(_loc2_)
         {
            this.var_978 = [];
            _loc3_ = param1.readInteger();
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_978.push(param1.readString());
               _loc4_++;
            }
            this.var_1205 = false;
         }
         else
         {
            this.var_2334 = param1.readInteger();
            this.var_1914 = param1.readInteger();
            this.var_1205 = true;
         }
         return true;
      }
      
      public function get simpleSecurity() : Boolean
      {
         return this.var_1205;
      }
      
      public function get rights() : Array
      {
         return this.var_978.slice();
      }
      
      public function get clubLevel() : int
      {
         return this.var_2334;
      }
      
      public function get securityLevel() : int
      {
         return this.var_1914;
      }
   }
}
