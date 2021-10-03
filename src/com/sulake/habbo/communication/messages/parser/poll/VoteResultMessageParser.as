package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1138:String;
      
      private var var_1336:Array;
      
      private var var_1206:Array;
      
      private var var_1909:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1138;
      }
      
      public function get choices() : Array
      {
         return this.var_1336.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1206.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1909;
      }
      
      public function flush() : Boolean
      {
         this.var_1138 = "";
         this.var_1336 = [];
         this.var_1206 = [];
         this.var_1909 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1138 = param1.readString();
         this.var_1336 = [];
         this.var_1206 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1336.push(param1.readString());
            this.var_1206.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1909 = param1.readInteger();
         return true;
      }
   }
}
