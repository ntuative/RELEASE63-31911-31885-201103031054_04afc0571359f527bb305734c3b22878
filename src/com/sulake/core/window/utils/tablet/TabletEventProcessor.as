package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2812:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_139 = param1.desktop;
         var_82 = param1.var_1222 as WindowController;
         _lastClickTarget = param1.var_1224 as WindowController;
         var_152 = param1.renderer;
         var_804 = param1.var_1223;
         param2.begin();
         param2.end();
         param1.desktop = var_139;
         param1.var_1222 = var_82;
         param1.var_1224 = _lastClickTarget;
         param1.renderer = var_152;
         param1.var_1223 = var_804;
      }
   }
}
