package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_783:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_551:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_783);
         this.var_551 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_551;
      }
   }
}
