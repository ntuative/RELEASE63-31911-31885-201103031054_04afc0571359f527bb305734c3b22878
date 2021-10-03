package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2058:String;
      
      private var var_1550:String;
      
      private var var_2057:String;
      
      private var var_1549:Boolean;
      
      private var var_1548:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2058 = String(param1["set-type"]);
         this.var_1550 = String(param1["flipped-set-type"]);
         this.var_2057 = String(param1["remove-set-type"]);
         this.var_1549 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1548 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1548;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1548 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2058;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1550;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2057;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1549;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1549 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1550 = param1;
      }
   }
}
