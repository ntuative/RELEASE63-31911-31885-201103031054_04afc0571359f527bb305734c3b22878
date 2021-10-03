package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_922:int = 3;
       
      
      private var var_2133:int = -1;
      
      private var var_2127:int = -2;
      
      private var var_333:Vector3d = null;
      
      private var var_393:Vector3d = null;
      
      private var var_2135:Boolean = false;
      
      private var var_2128:Boolean = false;
      
      private var var_2136:Boolean = false;
      
      private var var_2132:Boolean = false;
      
      private var var_2130:int = 0;
      
      private var var_2134:int = 0;
      
      private var var_2131:int = 0;
      
      private var var_2129:int = 0;
      
      private var var_1294:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_393;
      }
      
      public function get targetId() : int
      {
         return this.var_2133;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2127;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2135;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2128;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2136;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2132;
      }
      
      public function get screenWd() : int
      {
         return this.var_2130;
      }
      
      public function get screenHt() : int
      {
         return this.var_2134;
      }
      
      public function get roomWd() : int
      {
         return this.var_2131;
      }
      
      public function get roomHt() : int
      {
         return this.var_2129;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2133 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2127 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2135 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2128 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2136 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2132 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2130 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2134 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2131 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2129 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_333 == null)
         {
            this.var_333 = new Vector3d();
         }
         if(this.var_333.x != param1.x || this.var_333.y != param1.y || this.var_333.z != param1.z)
         {
            this.var_333.assign(param1);
            this.var_1294 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_333 = null;
         this.var_393 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_393 != null)
         {
            return;
         }
         this.var_393 = new Vector3d();
         this.var_393.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_333 != null && this.var_393 != null)
         {
            ++this.var_1294;
            _loc4_ = Vector3d.dif(this.var_333,this.var_393);
            if(_loc4_.length <= param2)
            {
               this.var_393 = this.var_333;
               this.var_333 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_922 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1294 <= const_922)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_393 = Vector3d.sum(this.var_393,_loc4_);
            }
         }
      }
   }
}
