package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1735:int = 1;
      
      public static const const_1638:int = 2;
       
      
      private var var_909:String;
      
      private var var_2466:int;
      
      private var var_2471:int;
      
      private var var_2469:int;
      
      private var var_2472:int;
      
      private var var_2470:Boolean;
      
      private var var_2088:Boolean;
      
      private var var_2087:int;
      
      private var var_2089:int;
      
      private var var_2467:Boolean;
      
      private var var_2468:int;
      
      private var var_2473:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_909 = param1.readString();
         this.var_2466 = param1.readInteger();
         this.var_2471 = param1.readInteger();
         this.var_2469 = param1.readInteger();
         this.var_2472 = param1.readInteger();
         this.var_2470 = param1.readBoolean();
         this.var_2088 = param1.readBoolean();
         this.var_2087 = param1.readInteger();
         this.var_2089 = param1.readInteger();
         this.var_2467 = param1.readBoolean();
         this.var_2468 = param1.readInteger();
         this.var_2473 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_909;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2466;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2471;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2469;
      }
      
      public function get responseType() : int
      {
         return this.var_2472;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2470;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2088;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2087;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2089;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2467;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2468;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2473;
      }
   }
}
