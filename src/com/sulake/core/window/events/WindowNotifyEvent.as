package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1394:String = "WN_CRETAE";
      
      public static const const_1602:String = "WN_CREATED";
      
      public static const const_1088:String = "WN_DESTROY";
      
      public static const const_1196:String = "WN_DESTROYED";
      
      public static const const_1210:String = "WN_OPEN";
      
      public static const const_1178:String = "WN_OPENED";
      
      public static const const_1204:String = "WN_CLOSE";
      
      public static const const_1190:String = "WN_CLOSED";
      
      public static const const_1082:String = "WN_FOCUS";
      
      public static const const_1170:String = "WN_FOCUSED";
      
      public static const const_1180:String = "WN_UNFOCUS";
      
      public static const const_1209:String = "WN_UNFOCUSED";
      
      public static const const_1003:String = "WN_ACTIVATE";
      
      public static const const_344:String = "WN_ACTVATED";
      
      public static const const_1028:String = "WN_DEACTIVATE";
      
      public static const const_1024:String = "WN_DEACTIVATED";
      
      public static const const_465:String = "WN_SELECT";
      
      public static const const_370:String = "WN_SELECTED";
      
      public static const const_626:String = "WN_UNSELECT";
      
      public static const const_669:String = "WN_UNSELECTED";
      
      public static const const_1058:String = "WN_LOCK";
      
      public static const const_1192:String = "WN_LOCKED";
      
      public static const const_1151:String = "WN_UNLOCK";
      
      public static const const_1074:String = "WN_UNLOCKED";
      
      public static const const_977:String = "WN_ENABLE";
      
      public static const const_657:String = "WN_ENABLED";
      
      public static const const_1133:String = "WN_DISABLE";
      
      public static const const_799:String = "WN_DISABLED";
      
      public static const const_629:String = "WN_RESIZE";
      
      public static const const_190:String = "WN_RESIZED";
      
      public static const const_1163:String = "WN_RELOCATE";
      
      public static const const_546:String = "WN_RELOCATED";
      
      public static const const_1143:String = "WN_MINIMIZE";
      
      public static const const_1012:String = "WN_MINIMIZED";
      
      public static const const_1191:String = "WN_MAXIMIZE";
      
      public static const const_1048:String = "WN_MAXIMIZED";
      
      public static const const_1155:String = "WN_RESTORE";
      
      public static const const_1086:String = "WN_RESTORED";
      
      public static const const_1883:String = "WN_ARRANGE";
      
      public static const const_1761:String = "WN_ARRANGED";
      
      public static const const_1897:String = "WN_UPDATE";
      
      public static const const_1782:String = "WN_UPDATED";
      
      public static const const_360:String = "WN_CHILD_ADDED";
      
      public static const const_694:String = "WN_CHILD_REMOVED";
      
      public static const const_319:String = "WN_CHILD_RESIZED";
      
      public static const const_309:String = "WN_CHILD_RELOCATED";
      
      public static const const_272:String = "WN_CHILD_ACTIVATED";
      
      public static const const_527:String = "WN_PARENT_ADDED";
      
      public static const const_1201:String = "WN_PARENT_REMOVED";
      
      public static const const_434:String = "WN_PARENT_RESIZED";
      
      public static const const_1081:String = "WN_PARENT_RELOCATED";
      
      public static const const_726:String = "WN_PARENT_ACTIVATED";
      
      public static const const_423:String = "WN_STATE_UPDATED";
      
      public static const const_427:String = "WN_STYLE_UPDATED";
      
      public static const const_574:String = "WN_PARAM_UPDATED";
      
      public static const const_1728:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1993,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
