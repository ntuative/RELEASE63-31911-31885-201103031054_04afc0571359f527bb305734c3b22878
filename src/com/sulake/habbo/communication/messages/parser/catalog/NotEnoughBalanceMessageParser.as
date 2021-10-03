package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1582:int = 0;
      
      private var var_1581:int = 0;
      
      private var var_1503:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1582;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1581;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1503;
      }
      
      public function flush() : Boolean
      {
         this.var_1582 = 0;
         this.var_1581 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1582 = param1.readInteger();
         this.var_1581 = param1.readInteger();
         this.var_1503 = param1.readInteger();
         return true;
      }
   }
}
