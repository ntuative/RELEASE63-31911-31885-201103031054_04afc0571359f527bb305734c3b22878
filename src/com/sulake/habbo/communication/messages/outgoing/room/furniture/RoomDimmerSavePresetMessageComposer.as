package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2266:int;
      
      private var var_2264:int;
      
      private var var_2267:String;
      
      private var var_2263:int;
      
      private var var_2265:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2266 = param1;
         this.var_2264 = param2;
         this.var_2267 = param3;
         this.var_2263 = param4;
         this.var_2265 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2266,this.var_2264,this.var_2267,this.var_2263,int(this.var_2265)];
      }
      
      public function dispose() : void
      {
      }
   }
}
