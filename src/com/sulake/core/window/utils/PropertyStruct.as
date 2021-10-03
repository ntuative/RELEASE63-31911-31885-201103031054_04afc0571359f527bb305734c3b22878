package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_149:String = "hex";
      
      public static const const_39:String = "int";
      
      public static const const_221:String = "uint";
      
      public static const const_228:String = "Number";
      
      public static const const_36:String = "Boolean";
      
      public static const const_53:String = "String";
      
      public static const const_219:String = "Point";
      
      public static const const_251:String = "Rectangle";
      
      public static const const_135:String = "Array";
      
      public static const const_214:String = "Map";
       
      
      private var var_583:String;
      
      private var var_170:Object;
      
      private var _type:String;
      
      private var var_2256:Boolean;
      
      private var var_2774:Boolean;
      
      private var var_2257:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_583 = param1;
         this.var_170 = param2;
         this._type = param3;
         this.var_2256 = param4;
         this.var_2774 = param3 == const_214 || param3 == const_135 || param3 == const_219 || param3 == const_251;
         this.var_2257 = param5;
      }
      
      public function get key() : String
      {
         return this.var_583;
      }
      
      public function get value() : Object
      {
         return this.var_170;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2256;
      }
      
      public function get range() : Array
      {
         return this.var_2257;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_149:
               return "0x" + uint(this.var_170).toString(16);
            case const_36:
               return Boolean(this.var_170) == true ? "true" : "false";
            case const_219:
               return "Point(" + Point(this.var_170).x + ", " + Point(this.var_170).y + ")";
            case const_251:
               return "Rectangle(" + Rectangle(this.var_170).x + ", " + Rectangle(this.var_170).y + ", " + Rectangle(this.var_170).width + ", " + Rectangle(this.var_170).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_214:
               _loc3_ = this.var_170 as Map;
               _loc1_ = "<var key=\"" + this.var_583 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_135:
               _loc4_ = this.var_170 as Array;
               _loc1_ = "<var key=\"" + this.var_583 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_219:
               _loc5_ = this.var_170 as Point;
               _loc1_ = "<var key=\"" + this.var_583 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_39 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_39 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_251:
               _loc6_ = this.var_170 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_583 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_39 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_39 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_39 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_39 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_149:
               _loc1_ = "<var key=\"" + this.var_583 + "\" value=\"" + "0x" + uint(this.var_170).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_583 + "\" value=\"" + this.var_170 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
