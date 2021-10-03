package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1214:int = 1;
      
      public static const const_856:int = 2;
      
      public static const const_664:int = 3;
      
      public static const const_1458:int = 4;
       
      
      private var _index:int;
      
      private var var_2119:String;
      
      private var var_2120:String;
      
      private var var_2118:Boolean;
      
      private var var_2116:String;
      
      private var var_885:String;
      
      private var var_2121:int;
      
      private var var_2115:int;
      
      private var _type:int;
      
      private var var_2117:String;
      
      private var var_852:GuestRoomData;
      
      private var var_853:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2119 = param1.readString();
         this.var_2120 = param1.readString();
         this.var_2118 = param1.readInteger() == 1;
         this.var_2116 = param1.readString();
         this.var_885 = param1.readString();
         this.var_2121 = param1.readInteger();
         this.var_2115 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1214)
         {
            this.var_2117 = param1.readString();
         }
         else if(this._type == const_664)
         {
            this.var_853 = new PublicRoomData(param1);
         }
         else if(this._type == const_856)
         {
            this.var_852 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_852 != null)
         {
            this.var_852.dispose();
            this.var_852 = null;
         }
         if(this.var_853 != null)
         {
            this.var_853.dispose();
            this.var_853 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2119;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2120;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2118;
      }
      
      public function get picText() : String
      {
         return this.var_2116;
      }
      
      public function get picRef() : String
      {
         return this.var_885;
      }
      
      public function get folderId() : int
      {
         return this.var_2121;
      }
      
      public function get tag() : String
      {
         return this.var_2117;
      }
      
      public function get userCount() : int
      {
         return this.var_2115;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_852;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_853;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1214)
         {
            return 0;
         }
         if(this.type == const_856)
         {
            return this.var_852.maxUserCount;
         }
         if(this.type == const_664)
         {
            return this.var_853.maxUsers;
         }
         return 0;
      }
   }
}
