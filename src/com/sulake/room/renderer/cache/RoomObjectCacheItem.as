package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_844:RoomObjectLocationCacheItem = null;
      
      private var var_189:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_844 = new RoomObjectLocationCacheItem(param1);
         this.var_189 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_844;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_189;
      }
      
      public function dispose() : void
      {
         if(this.var_844 != null)
         {
            this.var_844.dispose();
            this.var_844 = null;
         }
         if(this.var_189 != null)
         {
            this.var_189.dispose();
            this.var_189 = null;
         }
      }
   }
}
