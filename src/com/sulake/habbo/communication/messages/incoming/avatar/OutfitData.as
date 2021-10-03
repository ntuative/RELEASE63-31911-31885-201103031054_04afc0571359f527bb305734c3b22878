package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1821:int;
      
      private var var_2579:String;
      
      private var var_953:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1821 = param1.readInteger();
         this.var_2579 = param1.readString();
         this.var_953 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1821;
      }
      
      public function get figureString() : String
      {
         return this.var_2579;
      }
      
      public function get gender() : String
      {
         return this.var_953;
      }
   }
}
