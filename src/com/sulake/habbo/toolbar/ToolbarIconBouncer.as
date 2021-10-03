package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2099:Number;
      
      private var var_1857:Number;
      
      private var var_843:Number;
      
      private var var_844:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2099 = param1;
         this.var_1857 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_843 = param1;
         this.var_844 = 0;
      }
      
      public function update() : void
      {
         this.var_843 += this.var_1857;
         this.var_844 += this.var_843;
         if(this.var_844 > 0)
         {
            this.var_844 = 0;
            this.var_843 = this.var_2099 * -1 * this.var_843;
         }
      }
      
      public function get location() : Number
      {
         return this.var_844;
      }
   }
}
