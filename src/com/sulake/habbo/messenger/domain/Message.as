package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_826:int = 1;
      
      public static const const_635:int = 2;
      
      public static const const_646:int = 3;
      
      public static const const_1165:int = 4;
      
      public static const const_785:int = 5;
      
      public static const const_1114:int = 6;
       
      
      private var _type:int;
      
      private var var_1028:int;
      
      private var var_2390:String;
      
      private var var_2389:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1028 = param2;
         this.var_2390 = param3;
         this.var_2389 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2390;
      }
      
      public function get time() : String
      {
         return this.var_2389;
      }
      
      public function get senderId() : int
      {
         return this.var_1028;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
