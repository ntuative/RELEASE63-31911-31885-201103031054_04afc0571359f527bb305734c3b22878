package com.sulake.room.object.visualization.utils
{
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   
   public class GraphicAssetPalette
   {
      
      private static var name_1:Array = [];
       
      
      private var var_913:Array;
      
      private var var_2053:int = 0;
      
      private var var_2052:int = 0;
      
      public function GraphicAssetPalette(param1:ByteArray, param2:int, param3:int)
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         this.var_913 = [];
         super();
         param1.position = 0;
         while(param1.bytesAvailable >= 3)
         {
            _loc4_ = uint(param1.readUnsignedByte());
            _loc5_ = uint(param1.readUnsignedByte());
            _loc6_ = uint(param1.readUnsignedByte());
            _loc7_ = uint(-16777216 | _loc4_ << 16 | _loc5_ << 8 | _loc6_);
            this.var_913.push(_loc7_);
         }
         while(this.var_913.length < 256)
         {
            this.var_913.push(0);
         }
         while(true)
         {
            name_1.push(0);
         }
         this.var_2053 = param2;
         this.var_2052 = param3;
      }
      
      public function get primaryColor() : int
      {
         return this.var_2053;
      }
      
      public function get secondaryColor() : int
      {
         return this.var_2052;
      }
      
      public function dispose() : void
      {
         this.var_913 = [];
      }
      
      public function colorizeBitmap(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = param1.clone();
         param1.paletteMap(param1,param1.rect,new Point(0,0),name_1,this.var_913,name_1,name_1);
         param1.copyChannel(_loc2_,param1.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         _loc2_.dispose();
      }
   }
}
