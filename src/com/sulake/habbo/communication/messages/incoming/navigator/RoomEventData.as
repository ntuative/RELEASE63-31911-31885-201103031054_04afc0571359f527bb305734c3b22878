package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1039:Boolean;
      
      private var var_2149:int;
      
      private var var_2145:String;
      
      private var var_363:int;
      
      private var var_2146:int;
      
      private var var_2147:String;
      
      private var var_2144:String;
      
      private var var_2148:String;
      
      private var var_801:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_801 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1039 = false;
            return;
         }
         this.var_1039 = true;
         this.var_2149 = int(_loc2_);
         this.var_2145 = param1.readString();
         this.var_363 = int(param1.readString());
         this.var_2146 = param1.readInteger();
         this.var_2147 = param1.readString();
         this.var_2144 = param1.readString();
         this.var_2148 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_801.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_801 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2149;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2145;
      }
      
      public function get flatId() : int
      {
         return this.var_363;
      }
      
      public function get eventType() : int
      {
         return this.var_2146;
      }
      
      public function get eventName() : String
      {
         return this.var_2147;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2144;
      }
      
      public function get creationTime() : String
      {
         return this.var_2148;
      }
      
      public function get tags() : Array
      {
         return this.var_801;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1039;
      }
   }
}
