package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_521:int = -1;
      
      public static const const_1026:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_153:int = 0;
      
      private var var_2450:int = 1;
      
      private var var_981:int = 1;
      
      private var var_1919:int = 1;
      
      private var var_2678:int = -1;
      
      private var var_2679:int = 0;
      
      private var var_2680:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_153 = param3;
         this.var_2680 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2450 = param4;
         if(param5 < 0)
         {
            param5 = const_521;
         }
         this.var_981 = param5;
         this.var_1919 = param5;
         if(param7 >= 0)
         {
            this.var_2678 = param7;
            this.var_2679 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_153;
      }
      
      public function get repeats() : int
      {
         return this.var_2450;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_981;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2680;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_981 < 0)
         {
            return const_521;
         }
         return this.var_1919;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_981 > 0 && param1 > this.var_981)
         {
            param1 = this.var_981;
         }
         this.var_1919 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2678;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2679;
      }
   }
}
