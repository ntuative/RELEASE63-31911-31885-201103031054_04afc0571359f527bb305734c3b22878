package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1618:String = "";
      
      private var var_1634:String = "";
      
      private var var_2254:String = "";
      
      private var var_2597:Number = 0;
      
      private var var_2596:Number = 0;
      
      private var var_2395:Number = 0;
      
      private var var_2393:Number = 0;
      
      private var var_2061:Boolean = false;
      
      private var var_2062:Boolean = false;
      
      private var var_2060:Boolean = false;
      
      private var var_2059:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1618 = param2;
         this.var_1634 = param3;
         this.var_2254 = param4;
         this.var_2597 = param5;
         this.var_2596 = param6;
         this.var_2395 = param7;
         this.var_2393 = param8;
         this.var_2061 = param9;
         this.var_2062 = param10;
         this.var_2060 = param11;
         this.var_2059 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1618;
      }
      
      public function get canvasId() : String
      {
         return this.var_1634;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2254;
      }
      
      public function get screenX() : Number
      {
         return this.var_2597;
      }
      
      public function get screenY() : Number
      {
         return this.var_2596;
      }
      
      public function get localX() : Number
      {
         return this.var_2395;
      }
      
      public function get localY() : Number
      {
         return this.var_2393;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2061;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2062;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2060;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2059;
      }
   }
}
