package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_678:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2266:int;
      
      private var var_2264:int;
      
      private var _color:uint;
      
      private var var_1185:int;
      
      private var var_2585:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_678);
         this.var_2266 = param1;
         this.var_2264 = param2;
         this._color = param3;
         this.var_1185 = param4;
         this.var_2585 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2266;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2264;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1185;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2585;
      }
   }
}
