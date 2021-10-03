package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1064:String = "M";
      
      public static const const_1542:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_235:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_976:String = "";
      
      private var var_615:String = "";
      
      private var var_2504:String = "";
      
      private var var_2197:int;
      
      private var var_2200:int = 0;
      
      private var var_2503:String = "";
      
      private var var_2505:int = 0;
      
      private var var_2195:int = 0;
      
      private var var_2689:String = "";
      
      private var var_180:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_180 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_180)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_153 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_154;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_154 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_235;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_235 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_180)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_180)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_976;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_976 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_615 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2504;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_2504 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2197;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2197 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2200;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2200 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2503;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_2503 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2505;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2505 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2195;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_180)
         {
            this.var_2195 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2689;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_2689 = param1;
         }
      }
   }
}
