package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2372:int = 0;
      
      private var var_1342:String = "";
      
      private var var_1666:String = "";
      
      private var var_2298:String = "";
      
      private var var_2517:String = "";
      
      private var var_1804:int = 0;
      
      private var var_2520:int = 0;
      
      private var var_2519:int = 0;
      
      private var var_1343:int = 0;
      
      private var var_2518:int = 0;
      
      private var var_1345:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2372 = param1;
         this.var_1342 = param2;
         this.var_1666 = param3;
         this.var_2298 = param4;
         this.var_2517 = param5;
         if(param6)
         {
            this.var_1804 = 1;
         }
         else
         {
            this.var_1804 = 0;
         }
         this.var_2520 = param7;
         this.var_2519 = param8;
         this.var_1343 = param9;
         this.var_2518 = param10;
         this.var_1345 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2372,this.var_1342,this.var_1666,this.var_2298,this.var_2517,this.var_1804,this.var_2520,this.var_2519,this.var_1343,this.var_2518,this.var_1345];
      }
   }
}
