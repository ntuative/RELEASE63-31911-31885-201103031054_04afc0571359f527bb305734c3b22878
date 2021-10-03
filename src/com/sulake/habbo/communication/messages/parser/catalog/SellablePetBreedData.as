package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class SellablePetBreedData
   {
       
      
      private var _type:int;
      
      private var var_1601:int;
      
      private var var_2543:Boolean;
      
      private var var_2542:Boolean;
      
      public function SellablePetBreedData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1601 = param1.readInteger();
         this.var_2543 = param1.readBoolean();
         this.var_2542 = param1.readBoolean();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get breed() : int
      {
         return this.var_1601;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2543;
      }
      
      public function get rare() : Boolean
      {
         return this.var_2542;
      }
   }
}
