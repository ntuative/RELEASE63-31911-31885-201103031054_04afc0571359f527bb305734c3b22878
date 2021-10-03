package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_987:Array;
      
      private var var_2476:String;
      
      private var var_2475:String;
      
      private var var_2474:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_987 = param1;
         this.var_2476 = param2;
         this.var_2475 = param3;
         this.var_2474 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_987;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2476;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2475;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2474;
      }
   }
}
