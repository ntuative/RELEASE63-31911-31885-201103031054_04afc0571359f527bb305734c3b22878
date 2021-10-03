package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFlatControlUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2425:Boolean = false;
      
      private var var_2424:String;
      
      public function RoomObjectAvatarFlatControlUpdateMessage(param1:String)
      {
         super();
         this.var_2424 = param1;
         if(param1 != null && param1.indexOf("useradmin") != -1)
         {
            this.var_2425 = true;
         }
      }
      
      public function get isAdmin() : Boolean
      {
         return this.var_2425;
      }
      
      public function get rawData() : String
      {
         return this.var_2424;
      }
   }
}
