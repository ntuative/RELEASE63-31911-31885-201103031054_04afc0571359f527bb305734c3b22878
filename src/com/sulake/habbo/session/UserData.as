package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_976:String = "";
      
      private var var_615:String = "";
      
      private var var_2504:String = "";
      
      private var var_2197:int;
      
      private var var_2200:int = 0;
      
      private var var_2503:String = "";
      
      private var var_2505:int = 0;
      
      private var var_2195:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2197;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2197 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_976;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_976 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_615 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2504;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2504 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2200;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2200 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2503;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2503 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2505;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2505 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2195;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2195 = param1;
      }
   }
}
