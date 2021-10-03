package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2420:int;
      
      private var var_2480:int;
      
      private var var_2481:String;
      
      private var var_2483:String;
      
      private var var_2482:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2420 = param1;
         this.var_2480 = param2;
         this.var_2481 = param3;
         this.var_2483 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2420;
      }
      
      public function get length() : int
      {
         return this.var_2480;
      }
      
      public function get name() : String
      {
         return this.var_2481;
      }
      
      public function get creator() : String
      {
         return this.var_2483;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2482;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2482 = param1;
      }
   }
}
