package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_542:uint = 0;
      
      public static const const_1648:uint = 1;
      
      public static const const_1803:int = 0;
      
      public static const const_1773:int = 1;
      
      public static const const_1792:int = 2;
      
      public static const const_1763:int = 3;
      
      public static const const_1502:int = 4;
      
      public static const const_364:int = 5;
      
      public static var var_1488:IMouseCursor;
      
      public static var var_374:IEventQueue;
      
      private static var var_629:IEventProcessor;
      
      private static var var_1878:uint = const_542;
      
      private static var stage:Stage;
      
      private static var var_152:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2626:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_184:DisplayObjectContainer;
      
      protected var var_2806:Boolean = true;
      
      protected var var_1226:Error;
      
      protected var var_1995:int = -1;
      
      protected var var_1244:IInternalWindowServices;
      
      protected var var_1494:IWindowParser;
      
      protected var var_2758:IWindowFactory;
      
      protected var var_139:IDesktopWindow;
      
      protected var var_1495:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_528:Boolean = false;
      
      private var var_2627:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_152 = param2;
         this._localization = param4;
         this.var_184 = param5;
         this.var_1244 = new ServiceManager(this,param5);
         this.var_2758 = param3;
         this.var_1494 = new WindowParser(this);
         this.var_2626 = param7;
         if(!stage)
         {
            if(this.var_184 is Stage)
            {
               stage = this.var_184 as Stage;
            }
            else if(this.var_184.stage)
            {
               stage = this.var_184.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_139 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_184.addChild(this.var_139.getDisplayObject());
         this.var_184.doubleClickEnabled = true;
         this.var_184.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_152,this.var_139,this.var_139,null,this.var_2626);
         inputMode = const_542;
         this.var_1495 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1878;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_374)
         {
            if(var_374 is IDisposable)
            {
               IDisposable(var_374).dispose();
            }
         }
         if(var_629)
         {
            if(var_629 is IDisposable)
            {
               IDisposable(var_629).dispose();
            }
         }
         switch(value)
         {
            case const_542:
               var_374 = new MouseEventQueue(stage);
               var_629 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1648:
               var_374 = new TabletEventQueue(stage);
               var_629 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_542;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_184.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_184.removeChild(IGraphicContextHost(this.var_139).getGraphicContext(true) as DisplayObject);
            this.var_139.destroy();
            this.var_139 = null;
            this.var_1495.destroy();
            this.var_1495 = null;
            if(this.var_1244 is IDisposable)
            {
               IDisposable(this.var_1244).dispose();
            }
            this.var_1244 = null;
            this.var_1494.dispose();
            this.var_1494 = null;
            var_152 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1226;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1995;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1226 = param2;
         this.var_1995 = param1;
         if(this.var_2806)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1226 = null;
         this.var_1995 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1244;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1494;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2758;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_139;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1488 == null)
         {
            var_1488 = new MouseCursorControl(this.var_184);
         }
         return var_1488;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_139.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1502,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1495;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_139,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_139)
         {
            this.var_139 = null;
         }
         if(param1.state != WindowState.const_554)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_152.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_528 = true;
         if(this.var_1226)
         {
            throw this.var_1226;
         }
         var_629.process(this._eventProcessorState,var_374);
         this.var_528 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2627 = true;
         var_152.update(param1);
         this.var_2627 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_139 != null && !this.var_139.disposed)
         {
            if(this.var_184 is Stage)
            {
               this.var_139.width = Stage(this.var_184).stageWidth;
               this.var_139.height = Stage(this.var_184).stageHeight;
            }
            else
            {
               this.var_139.width = this.var_184.width;
               this.var_139.height = this.var_184.height;
            }
         }
      }
   }
}
