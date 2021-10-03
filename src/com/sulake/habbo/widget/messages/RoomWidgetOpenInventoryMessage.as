package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_834:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_996:String = "inventory_effects";
      
      public static const const_1106:String = "inventory_badges";
      
      public static const const_1389:String = "inventory_clothes";
      
      public static const const_1527:String = "inventory_furniture";
       
      
      private var var_2582:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_834);
         this.var_2582 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2582;
      }
   }
}
