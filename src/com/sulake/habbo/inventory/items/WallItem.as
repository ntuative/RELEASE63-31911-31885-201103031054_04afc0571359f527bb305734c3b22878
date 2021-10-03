package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _type:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var var_1308:Number;
      
      protected var var_1979:String;
      
      protected var var_2754:Boolean;
      
      protected var var_2755:Boolean;
      
      protected var var_2186:Boolean;
      
      protected var var_2543:Boolean;
      
      protected var var_809:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2186 = param5;
         this.var_2755 = param6;
         this.var_2754 = param7;
         this.var_2543 = param8;
         this.var_1979 = param9;
         this.var_1308 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get extra() : Number
      {
         return this.var_1308;
      }
      
      public function get stuffData() : String
      {
         return this.var_1979;
      }
      
      public function set stuffData(param1:String) : void
      {
         this.var_1979 = param1;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2754;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2755;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2186;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2543;
      }
      
      public function get locked() : Boolean
      {
         return this.var_809;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_809 = param1;
      }
   }
}
