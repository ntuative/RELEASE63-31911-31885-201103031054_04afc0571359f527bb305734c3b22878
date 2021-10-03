package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1599:String = "WE_CREATE";
      
      public static const const_1558:String = "WE_CREATED";
      
      public static const const_1380:String = "WE_DESTROY";
      
      public static const const_307:String = "WE_DESTROYED";
      
      public static const const_1646:String = "WE_OPEN";
      
      public static const const_1495:String = "WE_OPENED";
      
      public static const const_1435:String = "WE_CLOSE";
      
      public static const const_1604:String = "WE_CLOSED";
      
      public static const const_1578:String = "WE_FOCUS";
      
      public static const const_316:String = "WE_FOCUSED";
      
      public static const const_1650:String = "WE_UNFOCUS";
      
      public static const const_1485:String = "WE_UNFOCUSED";
      
      public static const const_1413:String = "WE_ACTIVATE";
      
      public static const const_1474:String = "WE_ACTIVATED";
      
      public static const const_1403:String = "WE_DEACTIVATE";
      
      public static const const_662:String = "WE_DEACTIVATED";
      
      public static const const_557:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_869:String = "WE_UNSELECT";
      
      public static const const_797:String = "WE_UNSELECTED";
      
      public static const const_1941:String = "WE_ATTACH";
      
      public static const const_1802:String = "WE_ATTACHED";
      
      public static const const_1908:String = "WE_DETACH";
      
      public static const const_1885:String = "WE_DETACHED";
      
      public static const const_1445:String = "WE_LOCK";
      
      public static const const_1397:String = "WE_LOCKED";
      
      public static const const_1442:String = "WE_UNLOCK";
      
      public static const const_1664:String = "WE_UNLOCKED";
      
      public static const const_853:String = "WE_ENABLE";
      
      public static const const_304:String = "WE_ENABLED";
      
      public static const const_843:String = "WE_DISABLE";
      
      public static const const_225:String = "WE_DISABLED";
      
      public static const const_1653:String = "WE_RELOCATE";
      
      public static const const_366:String = "WE_RELOCATED";
      
      public static const const_1587:String = "WE_RESIZE";
      
      public static const const_49:String = "WE_RESIZED";
      
      public static const const_1540:String = "WE_MINIMIZE";
      
      public static const const_1414:String = "WE_MINIMIZED";
      
      public static const const_1439:String = "WE_MAXIMIZE";
      
      public static const const_1623:String = "WE_MAXIMIZED";
      
      public static const const_1448:String = "WE_RESTORE";
      
      public static const const_1619:String = "WE_RESTORED";
      
      public static const const_1840:String = "WE_ARRANGE";
      
      public static const const_1738:String = "WE_ARRANGED";
      
      public static const const_108:String = "WE_UPDATE";
      
      public static const const_1771:String = "WE_UPDATED";
      
      public static const const_1764:String = "WE_CHILD_RELOCATE";
      
      public static const const_445:String = "WE_CHILD_RELOCATED";
      
      public static const const_1930:String = "WE_CHILD_RESIZE";
      
      public static const const_299:String = "WE_CHILD_RESIZED";
      
      public static const const_1927:String = "WE_CHILD_REMOVE";
      
      public static const const_475:String = "WE_CHILD_REMOVED";
      
      public static const const_1731:String = "WE_PARENT_RELOCATE";
      
      public static const const_1855:String = "WE_PARENT_RELOCATED";
      
      public static const const_1872:String = "WE_PARENT_RESIZE";
      
      public static const const_1640:String = "WE_PARENT_RESIZED";
      
      public static const const_198:String = "WE_OK";
      
      public static const const_859:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_472:String = "WE_SCROLL";
      
      public static const const_162:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1993:IWindow;
      
      protected var var_1994:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1993 = param3;
         this.var_1994 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1993;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1994 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1994;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
