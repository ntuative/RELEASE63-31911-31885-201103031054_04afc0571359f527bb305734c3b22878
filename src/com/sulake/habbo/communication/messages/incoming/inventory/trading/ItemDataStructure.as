package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2188:int;
      
      private var var_1421:String;
      
      private var var_2189:int;
      
      private var var_2187:int;
      
      private var _category:int;
      
      private var var_1979:String;
      
      private var var_1308:int;
      
      private var var_2183:int;
      
      private var var_2190:int;
      
      private var var_2184:int;
      
      private var var_2185:int;
      
      private var var_2186:Boolean;
      
      private var var_2811:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2188 = param1;
         this.var_1421 = param2;
         this.var_2189 = param3;
         this.var_2187 = param4;
         this._category = param5;
         this.var_1979 = param6;
         this.var_1308 = param7;
         this.var_2183 = param8;
         this.var_2190 = param9;
         this.var_2184 = param10;
         this.var_2185 = param11;
         this.var_2186 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2188;
      }
      
      public function get itemType() : String
      {
         return this.var_1421;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2189;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2187;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1979;
      }
      
      public function get extra() : int
      {
         return this.var_1308;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2183;
      }
      
      public function get creationDay() : int
      {
         return this.var_2190;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2184;
      }
      
      public function get creationYear() : int
      {
         return this.var_2185;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2186;
      }
      
      public function get songID() : int
      {
         return this.var_1308;
      }
   }
}
