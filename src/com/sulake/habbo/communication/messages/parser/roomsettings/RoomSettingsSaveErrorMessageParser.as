package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1759:int = 1;
      
      public static const const_1947:int = 2;
      
      public static const const_1865:int = 3;
      
      public static const const_1903:int = 4;
      
      public static const const_1562:int = 5;
      
      public static const const_1825:int = 6;
      
      public static const const_1404:int = 7;
      
      public static const const_1618:int = 8;
      
      public static const const_1755:int = 9;
      
      public static const const_1657:int = 10;
      
      public static const const_1537:int = 11;
      
      public static const const_1662:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1501:int;
      
      private var var_1390:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1501 = param1.readInteger();
         this.var_1390 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1501;
      }
      
      public function get info() : String
      {
         return this.var_1390;
      }
   }
}
