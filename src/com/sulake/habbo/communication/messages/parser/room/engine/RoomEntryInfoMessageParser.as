package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1901:Boolean;
      
      private var var_2662:int;
      
      private var var_428:Boolean;
      
      private var var_1194:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1901;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2662;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1194;
      }
      
      public function get owner() : Boolean
      {
         return this.var_428;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1194 != null)
         {
            this.var_1194.dispose();
            this.var_1194 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1901 = param1.readBoolean();
         if(this.var_1901)
         {
            this.var_2662 = param1.readInteger();
            this.var_428 = param1.readBoolean();
         }
         else
         {
            this.var_1194 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
