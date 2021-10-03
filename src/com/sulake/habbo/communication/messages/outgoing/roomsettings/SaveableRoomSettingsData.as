package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1541:String;
      
      private var var_2178:int;
      
      private var _password:String;
      
      private var var_1269:int;
      
      private var var_2320:int;
      
      private var var_801:Array;
      
      private var var_2321:Array;
      
      private var var_2177:Boolean;
      
      private var var_2317:Boolean;
      
      private var var_2318:Boolean;
      
      private var var_2319:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2177;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2177 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2317;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2317 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2318;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2318 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2319;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2319 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1541;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1541 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2178;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2178 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1269;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1269 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2320;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2320 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_801;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_801 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2321;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2321 = param1;
      }
   }
}
