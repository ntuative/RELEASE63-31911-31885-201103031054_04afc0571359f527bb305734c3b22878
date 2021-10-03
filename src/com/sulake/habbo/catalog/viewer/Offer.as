package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1563:String = "pricing_model_unknown";
      
      public static const const_501:String = "pricing_model_single";
      
      public static const const_544:String = "pricing_model_multi";
      
      public static const const_429:String = "pricing_model_bundle";
      
      public static const const_1374:String = "price_type_none";
      
      public static const const_802:String = "price_type_credits";
      
      public static const const_1213:String = "price_type_activitypoints";
      
      public static const const_1044:String = "price_type_credits_and_activitypoints";
       
      
      private var var_654:String;
      
      private var var_1003:String;
      
      private var _offerId:int;
      
      private var var_1502:String;
      
      private var var_1002:int;
      
      private var var_1004:int;
      
      private var var_1503:int;
      
      private var var_425:ICatalogPage;
      
      private var var_655:IProductContainer;
      
      private var var_2009:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1502 = param1.localizationId;
         this.var_1002 = param1.priceInCredits;
         this.var_1004 = param1.priceInActivityPoints;
         this.var_1503 = param1.activityPointType;
         this.var_425 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_425;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1502;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1002;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1004;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1503;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_655;
      }
      
      public function get pricingModel() : String
      {
         return this.var_654;
      }
      
      public function get priceType() : String
      {
         return this.var_1003;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2009;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2009 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1502 = "";
         this.var_1002 = 0;
         this.var_1004 = 0;
         this.var_1503 = 0;
         this.var_425 = null;
         if(this.var_655 != null)
         {
            this.var_655.dispose();
            this.var_655 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_654)
         {
            case const_501:
               this.var_655 = new SingleProductContainer(this,param1);
               break;
            case const_544:
               this.var_655 = new MultiProductContainer(this,param1);
               break;
            case const_429:
               this.var_655 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_654);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_654 = const_501;
            }
            else
            {
               this.var_654 = const_544;
            }
         }
         else if(param1.length > 1)
         {
            this.var_654 = const_429;
         }
         else
         {
            this.var_654 = const_1563;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1002 > 0 && this.var_1004 > 0)
         {
            this.var_1003 = const_1044;
         }
         else if(this.var_1002 > 0)
         {
            this.var_1003 = const_802;
         }
         else if(this.var_1004 > 0)
         {
            this.var_1003 = const_1213;
         }
         else
         {
            this.var_1003 = const_1374;
         }
      }
   }
}
