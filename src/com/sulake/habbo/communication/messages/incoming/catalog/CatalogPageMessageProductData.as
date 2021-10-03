package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_83:String = "i";
      
      public static const const_86:String = "s";
      
      public static const const_243:String = "e";
       
      
      private var var_1892:String;
      
      private var var_2274:int;
      
      private var var_1461:String;
      
      private var var_1462:int;
      
      private var var_1893:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1892 = param1.readString();
         this.var_2274 = param1.readInteger();
         this.var_1461 = param1.readString();
         this.var_1462 = param1.readInteger();
         this.var_1893 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1892;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2274;
      }
      
      public function get extraParam() : String
      {
         return this.var_1461;
      }
      
      public function get productCount() : int
      {
         return this.var_1462;
      }
      
      public function get expiration() : int
      {
         return this.var_1893;
      }
   }
}
