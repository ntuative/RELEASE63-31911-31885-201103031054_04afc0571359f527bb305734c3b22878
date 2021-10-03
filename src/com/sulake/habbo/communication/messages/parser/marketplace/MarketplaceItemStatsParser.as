package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2234:int;
      
      private var var_2269:int;
      
      private var var_2268:int;
      
      private var _dayOffsets:Array;
      
      private var var_1770:Array;
      
      private var var_1769:Array;
      
      private var var_2270:int;
      
      private var var_2271:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2234;
      }
      
      public function get offerCount() : int
      {
         return this.var_2269;
      }
      
      public function get historyLength() : int
      {
         return this.var_2268;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1770;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1769;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2270;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2271;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2234 = param1.readInteger();
         this.var_2269 = param1.readInteger();
         this.var_2268 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1770 = [];
         this.var_1769 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1770.push(param1.readInteger());
            this.var_1769.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2271 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         return true;
      }
   }
}
