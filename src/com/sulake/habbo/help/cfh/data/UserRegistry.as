package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1303:int = 80;
       
      
      private var var_485:Map;
      
      private var var_910:String = "";
      
      private var var_1373:Array;
      
      public function UserRegistry()
      {
         this.var_485 = new Map();
         this.var_1373 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_485;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_910 = param1;
         if(this.var_910 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_910 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_485.getValue(param1) != null)
         {
            this.var_485.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_910);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_910 == "")
         {
            this.var_1373.push(param1);
         }
         this.var_485.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_485.length > const_1303)
         {
            _loc1_ = this.var_485.getKey(0);
            this.var_485.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1373.length > 0)
         {
            _loc1_ = this.var_485.getValue(this.var_1373.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_910;
            }
         }
      }
   }
}
