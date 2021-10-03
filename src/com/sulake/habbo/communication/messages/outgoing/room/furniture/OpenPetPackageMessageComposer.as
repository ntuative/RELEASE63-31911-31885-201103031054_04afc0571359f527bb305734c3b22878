package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_329:int;
      
      private var var_2500:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_329 = param1;
         this.var_2500 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_329,this.var_2500];
      }
      
      public function dispose() : void
      {
      }
   }
}
