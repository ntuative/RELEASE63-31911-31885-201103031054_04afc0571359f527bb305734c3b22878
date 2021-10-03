package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_615:String;
      
      private var var_976:String;
      
      private var var_2046:String;
      
      private var var_1778:String;
      
      private var var_2048:int;
      
      private var var_2049:String;
      
      private var var_2044:int;
      
      private var var_2045:int;
      
      private var var_2047:int;
      
      private var _respectLeft:int;
      
      private var var_781:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_615 = param1.readString();
         this.var_976 = param1.readString();
         this.var_2046 = param1.readString();
         this.var_1778 = param1.readString();
         this.var_2048 = param1.readInteger();
         this.var_2049 = param1.readString();
         this.var_2044 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_2047 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_781 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function get sex() : String
      {
         return this.var_976;
      }
      
      public function get customData() : String
      {
         return this.var_2046;
      }
      
      public function get realName() : String
      {
         return this.var_1778;
      }
      
      public function get tickets() : int
      {
         return this.var_2048;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2049;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2044;
      }
      
      public function get directMail() : int
      {
         return this.var_2045;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2047;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_781;
      }
   }
}
