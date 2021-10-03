package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_2376:Number = 0;
      
      private var var_2373:Number = 0;
      
      private var var_2378:Number = 0;
      
      private var var_2377:Number = 0;
      
      private var var_235:int = 0;
      
      private var var_2374:int = 0;
      
      private var var_314:Array;
      
      private var var_2375:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_314 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_153 = param3;
         this.var_154 = param4;
         this.var_2376 = param5;
         this.var_235 = param6;
         this.var_2374 = param7;
         this.var_2373 = param8;
         this.var_2378 = param9;
         this.var_2377 = param10;
         this.var_2375 = param11;
         this.var_314 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function get z() : Number
      {
         return this.var_154;
      }
      
      public function get localZ() : Number
      {
         return this.var_2376;
      }
      
      public function get targetX() : Number
      {
         return this.var_2373;
      }
      
      public function get targetY() : Number
      {
         return this.var_2378;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2377;
      }
      
      public function get dir() : int
      {
         return this.var_235;
      }
      
      public function get dirHead() : int
      {
         return this.var_2374;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2375;
      }
      
      public function get actions() : Array
      {
         return this.var_314.slice();
      }
   }
}
