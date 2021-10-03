package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1430:Boolean = false;
      
      private var var_1633:int;
      
      private var var_1533:Array;
      
      private var var_770:Array;
      
      private var var_771:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1430 = _loc2_.isWrappingEnabled;
         this.var_1633 = _loc2_.wrappingPrice;
         this.var_1533 = _loc2_.stuffTypes;
         this.var_770 = _loc2_.boxTypes;
         this.var_771 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1430;
      }
      
      public function get price() : int
      {
         return this.var_1633;
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
   }
}
