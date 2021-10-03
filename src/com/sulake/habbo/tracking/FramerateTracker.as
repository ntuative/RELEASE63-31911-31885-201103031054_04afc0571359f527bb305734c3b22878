package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1576:int;
      
      private var var_2106:int;
      
      private var var_1032:int;
      
      private var var_481:Number;
      
      private var var_2108:Boolean;
      
      private var var_2107:int;
      
      private var var_1577:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2106 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2107 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2108 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1032;
         if(this.var_1032 == 1)
         {
            this.var_481 = param1;
            this.var_1576 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1032);
            this.var_481 = this.var_481 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2108 && param3 - this.var_1576 >= this.var_2106 && this.var_1577 < this.var_2107)
         {
            _loc5_ = 1000 / this.var_481;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1577;
            this.var_1576 = param3;
            this.var_1032 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
