package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1430:Boolean;
      
      private var var_2513:int;
      
      private var var_1859:int;
      
      private var var_1860:int;
      
      private var var_2512:int;
      
      private var var_2515:int;
      
      private var var_2514:int;
      
      private var var_2511:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1430;
      }
      
      public function get commission() : int
      {
         return this.var_2513;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1859;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1860;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2515;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2512;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2514;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2511;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1430 = param1.readBoolean();
         this.var_2513 = param1.readInteger();
         this.var_1859 = param1.readInteger();
         this.var_1860 = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_2512 = param1.readInteger();
         this.var_2514 = param1.readInteger();
         this.var_2511 = param1.readInteger();
         return true;
      }
   }
}
