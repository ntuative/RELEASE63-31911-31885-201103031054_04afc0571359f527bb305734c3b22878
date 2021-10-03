package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1691:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_191:MsgWithRequestId;
      
      private var var_584:RoomEventData;
      
      private var var_2283:Boolean;
      
      private var var_2278:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2163:int;
      
      private var var_240:GuestRoomData;
      
      private var var_890:PublicRoomShortData;
      
      private var var_2276:int;
      
      private var var_2281:Boolean;
      
      private var var_2282:int;
      
      private var var_2286:Boolean;
      
      private var var_1659:int;
      
      private var var_2277:Boolean;
      
      private var var_1338:Array;
      
      private var var_1339:Array;
      
      private var var_2285:int;
      
      private var var_1340:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1078:Boolean;
      
      private var var_2279:int;
      
      private var var_2280:Boolean;
      
      private var var_2284:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1338 = new Array();
         this.var_1339 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_240 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_240 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_890 = null;
         this.var_240 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_890 = param1.publicSpace;
            this.var_584 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_584 != null)
         {
            this.var_584.dispose();
            this.var_584 = null;
         }
         if(this.var_890 != null)
         {
            this.var_890.dispose();
            this.var_890 = null;
         }
         if(this.var_240 != null)
         {
            this.var_240.dispose();
            this.var_240 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_240 != null)
         {
            this.var_240.dispose();
         }
         this.var_240 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_584 != null)
         {
            this.var_584.dispose();
         }
         this.var_584 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_191 != null && this.var_191 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_191 != null && this.var_191 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_191 != null && this.var_191 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_191 = param1;
         this.var_1078 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_191 = param1;
         this.var_1078 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_191 = param1;
         this.var_1078 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_191 == null)
         {
            return;
         }
         this.var_191.dispose();
         this.var_191 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_191 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_191 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_191 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_584;
      }
      
      public function get avatarId() : int
      {
         return this.var_2163;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2283;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2278;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_240;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_890;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2281;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2282;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1659;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2286;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2279;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2276;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2277;
      }
      
      public function get adIndex() : int
      {
         return this.var_2284;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2280;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2163 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2282 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2281 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2283 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2278 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2286 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1659 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2279 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2276 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2277 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2284 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1338 = param1;
         this.var_1339 = new Array();
         for each(_loc2_ in this.var_1338)
         {
            if(_loc2_.visible)
            {
               this.var_1339.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1338;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1339;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2285 = param1.limit;
         this.var_1340 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1340 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_240.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_240 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_240.flatId;
         return this.var_1659 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1340 >= this.var_2285;
      }
      
      public function startLoading() : void
      {
         this.var_1078 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1078;
      }
   }
}
