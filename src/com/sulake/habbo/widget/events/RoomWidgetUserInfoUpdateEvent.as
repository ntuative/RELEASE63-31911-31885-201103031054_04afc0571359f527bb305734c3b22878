package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_125:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_983:int = 2;
      
      public static const const_1219:int = 3;
      
      public static const const_1456:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1902:String = "";
      
      private var var_2197:int;
      
      private var var_2200:int = 0;
      
      private var var_2195:int = 0;
      
      private var var_615:String = "";
      
      private var var_44:BitmapData = null;
      
      private var var_257:Array;
      
      private var var_1611:Array;
      
      private var var_1302:int = 0;
      
      private var var_2205:String = "";
      
      private var var_2202:int = 0;
      
      private var var_2204:int = 0;
      
      private var var_1654:Boolean = false;
      
      private var var_1778:String = "";
      
      private var var_2194:Boolean = false;
      
      private var var_2203:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2198:Boolean = false;
      
      private var var_2199:Boolean = false;
      
      private var var_2206:Boolean = false;
      
      private var var_2193:Boolean = false;
      
      private var var_2201:Boolean = false;
      
      private var var_2207:Boolean = false;
      
      private var var_2196:int = 0;
      
      private var var_1656:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_257 = [];
         this.var_1611 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1902 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1902;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2197 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2197;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2200 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2200;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2195 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2195;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_615 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_44 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_44;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_257 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_257;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1611;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1611 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1302 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1302;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2205 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2205;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2194 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2194;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2198 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2198;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2199 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2199;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2206 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2206;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2193 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2193;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2201 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2201;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2207 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2207;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2196;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2203 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2203;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1656 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1656;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2202 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2202;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2204 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2204;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1654 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1654;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1778 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1778;
      }
   }
}
