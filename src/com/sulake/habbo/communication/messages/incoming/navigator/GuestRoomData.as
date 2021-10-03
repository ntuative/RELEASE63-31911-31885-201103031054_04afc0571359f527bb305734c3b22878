package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_363:int;
      
      private var var_688:Boolean;
      
      private var var_910:String;
      
      private var _ownerName:String;
      
      private var var_2178:int;
      
      private var var_2115:int;
      
      private var var_2174:int;
      
      private var var_1541:String;
      
      private var var_2180:int;
      
      private var var_2179:Boolean;
      
      private var var_697:int;
      
      private var var_1269:int;
      
      private var var_2175:String;
      
      private var var_801:Array;
      
      private var var_2176:RoomThumbnailData;
      
      private var var_2177:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_801 = new Array();
         super();
         this.var_363 = param1.readInteger();
         this.var_688 = param1.readBoolean();
         this.var_910 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2178 = param1.readInteger();
         this.var_2115 = param1.readInteger();
         this.var_2174 = param1.readInteger();
         this.var_1541 = param1.readString();
         this.var_2180 = param1.readInteger();
         this.var_2179 = param1.readBoolean();
         this.var_697 = param1.readInteger();
         this.var_1269 = param1.readInteger();
         this.var_2175 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_801.push(_loc4_);
            _loc3_++;
         }
         this.var_2176 = new RoomThumbnailData(param1);
         this.var_2177 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_801 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_363;
      }
      
      public function get event() : Boolean
      {
         return this.var_688;
      }
      
      public function get roomName() : String
      {
         return this.var_910;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2178;
      }
      
      public function get userCount() : int
      {
         return this.var_2115;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2174;
      }
      
      public function get description() : String
      {
         return this.var_1541;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2180;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2179;
      }
      
      public function get score() : int
      {
         return this.var_697;
      }
      
      public function get categoryId() : int
      {
         return this.var_1269;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2175;
      }
      
      public function get tags() : Array
      {
         return this.var_801;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2176;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2177;
      }
   }
}
