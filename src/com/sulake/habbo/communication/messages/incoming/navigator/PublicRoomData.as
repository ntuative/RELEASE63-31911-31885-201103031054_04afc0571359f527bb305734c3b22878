package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2122:String;
      
      private var var_2325:int;
      
      private var var_2123:int;
      
      private var var_2324:String;
      
      private var var_2323:int;
      
      private var var_1723:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2122 = param1.readString();
         this.var_2325 = param1.readInteger();
         this.var_2123 = param1.readInteger();
         this.var_2324 = param1.readString();
         this.var_2323 = param1.readInteger();
         this.var_1723 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2122;
      }
      
      public function get unitPort() : int
      {
         return this.var_2325;
      }
      
      public function get worldId() : int
      {
         return this.var_2123;
      }
      
      public function get castLibs() : String
      {
         return this.var_2324;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2323;
      }
      
      public function get nodeId() : int
      {
         return this.var_1723;
      }
   }
}
