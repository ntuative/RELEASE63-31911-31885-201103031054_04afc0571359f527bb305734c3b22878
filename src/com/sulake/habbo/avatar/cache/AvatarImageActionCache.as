package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_253:Map;
      
      private var var_2717:int;
      
      public function AvatarImageActionCache()
      {
         super();
         this.var_253 = new Map();
         this.setLastAccessTime(getTimer());
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.debugInfo("[dispose]");
         if(this.var_253 == null)
         {
            return;
         }
         for each(_loc1_ in this.var_253)
         {
            _loc1_.dispose();
         }
         this.var_253.dispose();
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return this.var_253.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         this.var_253.add(_loc3_,param2);
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         this.var_2717 = param1;
      }
      
      public function getLastAccessTime() : int
      {
         return this.var_2717;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
   }
}
