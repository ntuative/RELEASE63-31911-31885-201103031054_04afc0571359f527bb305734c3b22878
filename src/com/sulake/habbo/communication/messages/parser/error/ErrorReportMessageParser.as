package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1501:int;
      
      private var var_1824:int;
      
      private var var_1825:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1824 = param1.readInteger();
         this.var_1501 = param1.readInteger();
         this.var_1825 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1501 = 0;
         this.var_1824 = 0;
         this.var_1825 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1501;
      }
      
      public function get messageId() : int
      {
         return this.var_1824;
      }
      
      public function get timestamp() : String
      {
         return this.var_1825;
      }
   }
}
