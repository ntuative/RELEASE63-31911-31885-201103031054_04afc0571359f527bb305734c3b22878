package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1850:int;
      
      private var var_2500:String;
      
      private var var_1452:int;
      
      private var var_1044:int;
      
      private var var_1601:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1850 = param1.readInteger();
         this.var_2500 = param1.readString();
         this.var_1452 = param1.readInteger();
         this.var_1044 = param1.readInteger();
         this.var_1601 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1850;
      }
      
      public function get petName() : String
      {
         return this.var_2500;
      }
      
      public function get level() : int
      {
         return this.var_1452;
      }
      
      public function get petType() : int
      {
         return this.var_1044;
      }
      
      public function get breed() : int
      {
         return this.var_1601;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
