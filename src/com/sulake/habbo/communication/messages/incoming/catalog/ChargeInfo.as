package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2460:int;
      
      private var var_2605:int;
      
      private var var_1002:int;
      
      private var var_1004:int;
      
      private var var_1503:int;
      
      private var var_2606:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2460 = param1.readInteger();
         this.var_2605 = param1.readInteger();
         this.var_1002 = param1.readInteger();
         this.var_1004 = param1.readInteger();
         this.var_1503 = param1.readInteger();
         this.var_2606 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2460;
      }
      
      public function get charges() : int
      {
         return this.var_2605;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1002;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1004;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2606;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1503;
      }
   }
}
