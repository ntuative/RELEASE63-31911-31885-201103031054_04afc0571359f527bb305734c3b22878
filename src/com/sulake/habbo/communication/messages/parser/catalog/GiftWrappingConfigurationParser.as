package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2039:Boolean;
      
      private var var_2038:int;
      
      private var var_1533:Array;
      
      private var var_770:Array;
      
      private var var_771:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2039;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2038;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1533;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_770;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_771;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1533 = [];
         this.var_770 = [];
         this.var_771 = [];
         this.var_2039 = param1.readBoolean();
         this.var_2038 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1533.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_770.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_771.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
