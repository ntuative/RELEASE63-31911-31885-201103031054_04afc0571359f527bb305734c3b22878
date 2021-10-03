package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_146:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_142:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1138:String;
      
      private var var_1336:Array;
      
      private var var_1206:Array;
      
      private var var_1909:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1138 = param2;
         this.var_1336 = param3;
         this.var_1206 = param4;
         if(this.var_1206 == null)
         {
            this.var_1206 = [];
         }
         this.var_1909 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1138;
      }
      
      public function get choices() : Array
      {
         return this.var_1336.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1206.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1909;
      }
   }
}
