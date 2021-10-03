package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_168:IHabboConfigurationManager = null;
      
      private var var_534:int = 0;
      
      private var var_481:Number = 0;
      
      private var var_2775:Array;
      
      private var var_1342:String = "";
      
      private var var_1666:String = "";
      
      private var var_2298:String = "";
      
      private var var_2517:String = "";
      
      private var var_1804:Boolean = false;
      
      private var var_1664:GarbageMonitor = null;
      
      private var var_1343:int = 0;
      
      private var var_2297:Boolean;
      
      private var var_1663:int = 1000;
      
      private var var_1345:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1576:int = 0;
      
      private var var_1665:int = 10;
      
      private var var_1344:int = 0;
      
      private var var_2294:Number = 0.15;
      
      private var var_2296:Boolean = true;
      
      private var var_2295:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2775 = [];
         super();
         this.var_1666 = Capabilities.version;
         this.var_2298 = Capabilities.os;
         this.var_1804 = Capabilities.isDebugger;
         this.var_1342 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1342 == null)
         {
            this.var_1342 = "unknown";
         }
         this.var_1664 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1576 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1666;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_481;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1663 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1665 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_168 = param1;
         this._reportInterval = int(this.var_168.getKey("performancetest.interval","60"));
         this.var_1663 = int(this.var_168.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1665 = int(this.var_168.getKey("performancetest.reportlimit","10"));
         this.var_2294 = Number(this.var_168.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2296 = Boolean(int(this.var_168.getKey("performancetest.distribution.enabled","1")));
         this.var_2297 = Boolean(this.var_168.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1664.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1664.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2297)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1343;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1663)
         {
            ++this.var_1345;
            _loc3_ = true;
         }
         else
         {
            ++this.var_534;
            if(this.var_534 <= 1)
            {
               this.var_481 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_534);
               this.var_481 = this.var_481 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1576 > this._reportInterval * 1000 && this.var_1344 < this.var_1665)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_481);
            _loc6_ = true;
            if(this.var_2296 && this.var_1344 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2295,this.var_481);
               if(_loc7_ < this.var_2294)
               {
                  _loc6_ = false;
               }
            }
            this.var_1576 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2295 = this.var_481;
               if(this.sendReport(param2))
               {
                  ++this.var_1344;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1342,this.var_1666,this.var_2298,this.var_2517,this.var_1804,_loc5_,_loc4_,this.var_1343,this.var_481,this.var_1345);
            this._connection.send(_loc2_);
            this.var_1343 = 0;
            this.var_481 = 0;
            this.var_534 = 0;
            this.var_1345 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
