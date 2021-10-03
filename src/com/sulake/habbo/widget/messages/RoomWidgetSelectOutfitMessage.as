package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1138:String = "select_outfit";
       
      
      private var var_2023:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1138);
         this.var_2023 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2023;
      }
   }
}
