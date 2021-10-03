package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_181;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1076;
         param1["embedded_controller"] = const_1147;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_837;
         param1["mouse_dragging_target"] = const_218;
         param1["mouse_dragging_trigger"] = const_393;
         param1["mouse_scaling_target"] = const_279;
         param1["mouse_scaling_trigger"] = const_492;
         param1["horizontal_mouse_scaling_trigger"] = const_242;
         param1["vertical_mouse_scaling_trigger"] = const_260;
         param1["observe_parent_input_events"] = const_995;
         param1["optimize_region_to_layout_size"] = const_507;
         param1["parent_window"] = const_1131;
         param1["relative_horizontal_scale_center"] = const_171;
         param1["relative_horizontal_scale_fixed"] = const_154;
         param1["relative_horizontal_scale_move"] = const_349;
         param1["relative_horizontal_scale_strech"] = const_355;
         param1["relative_scale_center"] = const_1099;
         param1["relative_scale_fixed"] = const_747;
         param1["relative_scale_move"] = const_1207;
         param1["relative_scale_strech"] = const_1200;
         param1["relative_vertical_scale_center"] = const_183;
         param1["relative_vertical_scale_fixed"] = const_148;
         param1["relative_vertical_scale_move"] = const_373;
         param1["relative_vertical_scale_strech"] = const_290;
         param1["on_resize_align_left"] = const_627;
         param1["on_resize_align_right"] = const_448;
         param1["on_resize_align_center"] = const_433;
         param1["on_resize_align_top"] = const_641;
         param1["on_resize_align_bottom"] = const_536;
         param1["on_resize_align_middle"] = const_452;
         param1["on_accommodate_align_left"] = const_1097;
         param1["on_accommodate_align_right"] = const_525;
         param1["on_accommodate_align_center"] = const_781;
         param1["on_accommodate_align_top"] = const_1198;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_721;
         param1["route_input_events_to_parent"] = const_442;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1215;
         param1["scalable_with_mouse"] = const_1072;
         param1["reflect_horizontal_resize_to_parent"] = const_523;
         param1["reflect_vertical_resize_to_parent"] = const_435;
         param1["reflect_resize_to_parent"] = const_318;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1174;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
