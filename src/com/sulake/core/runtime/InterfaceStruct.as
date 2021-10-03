package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1473:IID;
      
      private var var_1920:String;
      
      private var var_104:IUnknown;
      
      private var var_785:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1473 = param1;
         this.var_1920 = getQualifiedClassName(this.var_1473);
         this.var_104 = param2;
         this.var_785 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1473;
      }
      
      public function get iis() : String
      {
         return this.var_1920;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_104;
      }
      
      public function get references() : uint
      {
         return this.var_785;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_104 == null;
      }
      
      public function dispose() : void
      {
         this.var_1473 = null;
         this.var_1920 = null;
         this.var_104 = null;
         this.var_785 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_785;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_785) : uint(0);
      }
   }
}
