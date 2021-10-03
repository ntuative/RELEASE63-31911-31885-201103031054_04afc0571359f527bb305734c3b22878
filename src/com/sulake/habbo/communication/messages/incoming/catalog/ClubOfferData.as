package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1704:String;
      
      private var var_1633:int;
      
      private var var_2353:Boolean;
      
      private var var_2352:Boolean;
      
      private var var_2351:int;
      
      private var var_2348:int;
      
      private var var_2347:int;
      
      private var var_2349:int;
      
      private var var_2354:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1704 = param1.readString();
         this.var_1633 = param1.readInteger();
         this.var_2353 = param1.readBoolean();
         this.var_2352 = param1.readBoolean();
         this.var_2351 = param1.readInteger();
         this.var_2348 = param1.readInteger();
         this.var_2347 = param1.readInteger();
         this.var_2349 = param1.readInteger();
         this.var_2354 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1704;
      }
      
      public function get price() : int
      {
         return this.var_1633;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2353;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2352;
      }
      
      public function get periods() : int
      {
         return this.var_2351;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2348;
      }
      
      public function get year() : int
      {
         return this.var_2347;
      }
      
      public function get month() : int
      {
         return this.var_2349;
      }
      
      public function get day() : int
      {
         return this.var_2354;
      }
   }
}
