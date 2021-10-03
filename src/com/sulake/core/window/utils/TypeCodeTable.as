package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_651;
         param1["bitmap"] = const_888;
         param1["border"] = const_622;
         param1["border_notify"] = const_1523;
         param1["button"] = const_545;
         param1["button_thick"] = const_806;
         param1["button_icon"] = const_1614;
         param1["button_group_left"] = const_902;
         param1["button_group_center"] = const_789;
         param1["button_group_right"] = const_866;
         param1["canvas"] = const_729;
         param1["checkbox"] = const_620;
         param1["closebutton"] = const_1096;
         param1["container"] = const_341;
         param1["container_button"] = const_812;
         param1["display_object_wrapper"] = const_872;
         param1["dropmenu"] = const_572;
         param1["dropmenu_item"] = const_561;
         param1["frame"] = const_404;
         param1["frame_notify"] = const_1482;
         param1["header"] = const_779;
         param1["html"] = const_990;
         param1["icon"] = const_1011;
         param1["itemgrid"] = const_1014;
         param1["itemgrid_horizontal"] = const_422;
         param1["itemgrid_vertical"] = const_829;
         param1["itemlist"] = const_985;
         param1["itemlist_horizontal"] = const_388;
         param1["itemlist_vertical"] = const_353;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1525;
         param1["menu"] = const_1428;
         param1["menu_item"] = const_1595;
         param1["submenu"] = const_1057;
         param1["minimizebox"] = const_1544;
         param1["notify"] = const_1647;
         param1["null"] = const_763;
         param1["password"] = const_814;
         param1["radiobutton"] = const_728;
         param1["region"] = const_702;
         param1["restorebox"] = const_1651;
         param1["scaler"] = const_851;
         param1["scaler_horizontal"] = const_1601;
         param1["scaler_vertical"] = const_1489;
         param1["scrollbar_horizontal"] = const_524;
         param1["scrollbar_vertical"] = const_667;
         param1["scrollbar_slider_button_up"] = const_1017;
         param1["scrollbar_slider_button_down"] = const_1139;
         param1["scrollbar_slider_button_left"] = const_1059;
         param1["scrollbar_slider_button_right"] = const_1162;
         param1["scrollbar_slider_bar_horizontal"] = const_1073;
         param1["scrollbar_slider_bar_vertical"] = const_1061;
         param1["scrollbar_slider_track_horizontal"] = const_1104;
         param1["scrollbar_slider_track_vertical"] = const_1098;
         param1["scrollable_itemlist"] = const_1373;
         param1["scrollable_itemlist_vertical"] = const_440;
         param1["scrollable_itemlist_horizontal"] = const_998;
         param1["selector"] = const_879;
         param1["selector_list"] = const_628;
         param1["submenu"] = const_1057;
         param1["tab_button"] = const_495;
         param1["tab_container_button"] = const_1126;
         param1["tab_context"] = const_376;
         param1["tab_content"] = const_1176;
         param1["tab_selector"] = const_633;
         param1["text"] = const_496;
         param1["input"] = const_737;
         param1["toolbar"] = const_1634;
         param1["tooltip"] = const_399;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
