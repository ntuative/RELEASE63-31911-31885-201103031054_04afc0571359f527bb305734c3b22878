package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1452:int;
      
      private var var_1593:int;
      
      private var var_2033:int;
      
      private var var_1877:int;
      
      private var var_1453:int;
      
      private var var_2031:String = "";
      
      private var var_2032:String = "";
      
      private var var_2030:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1452 = param1.readInteger();
         this.var_2031 = param1.readString();
         this.var_1593 = param1.readInteger();
         this.var_2033 = param1.readInteger();
         this.var_1877 = param1.readInteger();
         this.var_1453 = param1.readInteger();
         this.var_2030 = param1.readInteger();
         this.var_2032 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1452;
      }
      
      public function get points() : int
      {
         return this.var_1593;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2033;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1877;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1453;
      }
      
      public function get badgeID() : String
      {
         return this.var_2031;
      }
      
      public function get achievementID() : int
      {
         return this.var_2030;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2032;
      }
   }
}
