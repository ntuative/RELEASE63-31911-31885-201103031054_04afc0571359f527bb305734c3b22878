package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1452:int;
      
      private var var_298:String;
      
      private var var_2414:int;
      
      private var var_2033:int;
      
      private var var_1877:int;
      
      private var var_2415:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1452 = param1.readInteger();
         this.var_298 = param1.readString();
         this.var_2414 = param1.readInteger();
         this.var_2033 = param1.readInteger();
         this.var_1877 = param1.readInteger();
         this.var_2415 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_298;
      }
      
      public function get level() : int
      {
         return this.var_1452;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2414;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2033;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1877;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2415;
      }
   }
}
