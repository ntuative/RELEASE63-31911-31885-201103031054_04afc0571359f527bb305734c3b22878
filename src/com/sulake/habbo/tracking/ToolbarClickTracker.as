package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1245:IHabboTracking;
      
      private var var_1683:Boolean = false;
      
      private var var_2260:int = 0;
      
      private var var_1652:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1245 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1245 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1683 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2260 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1683)
         {
            return;
         }
         ++this.var_1652;
         if(this.var_1652 <= this.var_2260)
         {
            this.var_1245.track("toolbar",param1);
         }
      }
   }
}
