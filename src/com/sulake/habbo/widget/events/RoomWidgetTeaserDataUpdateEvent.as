package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_509:String = "RWTDUE_TEASER_DATA";
      
      public static const const_817:String = "RWTDUE_GIFT_DATA";
      
      public static const const_741:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_329:int;
      
      private var _data:String;
      
      private var var_375:int;
      
      private var var_166:String;
      
      private var var_2213:String;
      
      private var var_2214:Boolean;
      
      private var var_1246:int = 0;
      
      private var var_2344:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_329;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_375;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2213;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2214;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2344;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1246;
      }
      
      public function set status(param1:int) : void
      {
         this.var_375 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2213 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2214 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2344 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_329 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_166;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_166 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1246 = param1;
      }
   }
}
