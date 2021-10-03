package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_945:IAssetLoader;
      
      private var var_1722:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1722 = param1;
         this.var_945 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1722;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_945;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_945 != null)
            {
               if(!this.var_945.disposed)
               {
                  this.var_945.dispose();
                  this.var_945 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
