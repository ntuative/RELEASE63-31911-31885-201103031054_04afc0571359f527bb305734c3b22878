package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1751:IID;
      
      private var var_657:Boolean;
      
      private var var_1131:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1751 = param1;
         this.var_1131 = new Array();
         this.var_657 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1751;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_657;
      }
      
      public function get receivers() : Array
      {
         return this.var_1131;
      }
      
      public function dispose() : void
      {
         if(!this.var_657)
         {
            this.var_657 = true;
            this.var_1751 = null;
            while(this.var_1131.length > 0)
            {
               this.var_1131.pop();
            }
            this.var_1131 = null;
         }
      }
   }
}
