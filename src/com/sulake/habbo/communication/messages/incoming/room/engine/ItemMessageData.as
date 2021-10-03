package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2392:Boolean = false;
      
      private var var_2396:int = 0;
      
      private var var_2394:int = 0;
      
      private var var_2395:int = 0;
      
      private var var_2393:int = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_235:String = "";
      
      private var _type:int = 0;
      
      private var var_2823:String = "";
      
      private var var_1308:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_180:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2392 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_180 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2392;
      }
      
      public function get wallX() : Number
      {
         return this.var_2396;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_2396 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2394;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_2394 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2395;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_2395 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2393;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_180)
         {
            this.var_2393 = param1;
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
      
      public function get dir() : String
      {
         return this.var_235;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_180)
         {
            this.var_235 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_180)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_180)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_180)
         {
            this._data = param1;
         }
      }
   }
}
