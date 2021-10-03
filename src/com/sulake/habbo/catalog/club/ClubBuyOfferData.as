package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1704:String;
      
      private var var_1633:int;
      
      private var var_2353:Boolean;
      
      private var var_2352:Boolean;
      
      private var var_2351:int;
      
      private var var_2348:int;
      
      private var var_425:ICatalogPage;
      
      private var var_2347:int;
      
      private var var_2349:int;
      
      private var var_2354:int;
      
      private var var_2350:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1704 = param2;
         this.var_1633 = param3;
         this.var_2353 = param4;
         this.var_2352 = param5;
         this.var_2351 = param6;
         this.var_2348 = param7;
         this.var_2347 = param8;
         this.var_2349 = param9;
         this.var_2354 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_188;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1633;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_425;
      }
      
      public function get priceType() : String
      {
         return Offer.const_802;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1704;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_425 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2350;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2350 = param1;
      }
   }
}
