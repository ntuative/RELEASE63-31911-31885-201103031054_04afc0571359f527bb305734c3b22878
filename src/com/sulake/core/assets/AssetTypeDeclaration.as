package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2489:String;
      
      private var var_2491:Class;
      
      private var var_2490:Class;
      
      private var var_1794:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2489 = param1;
         this.var_2491 = param2;
         this.var_2490 = param3;
         if(rest == null)
         {
            this.var_1794 = new Array();
         }
         else
         {
            this.var_1794 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2489;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2491;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2490;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1794;
      }
   }
}
