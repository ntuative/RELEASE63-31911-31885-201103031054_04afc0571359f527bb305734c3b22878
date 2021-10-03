package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1899:int = -1;
      
      private var var_2654:int = 0;
      
      private var var_1795:Boolean = false;
      
      private var var_581:int = 0;
      
      private var _frames:Array;
      
      private var var_975:Array;
      
      private var var_974:Array;
      
      private var var_633:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_975 = [];
         this.var_974 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1795;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1795 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_581;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_581 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1899;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1899)
         {
            this.var_1899 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2654;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2654 = param1;
      }
      
      public function dispose() : void
      {
         this._frames = null;
         this.var_975 = null;
         this.var_974 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_633 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this._frames = [];
         }
         this.var_975 = [];
         this.var_974 = [];
         this.var_1795 = false;
         this.var_581 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_633)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  this._frames[_loc2_] = new AnimationFrame(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_975[_loc2_] = false;
            this.var_974[_loc2_] = false;
            _loc2_++;
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_633)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         if(param1 >= 0 && param1 < this.var_633)
         {
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_633)
         {
            return this.var_974[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_633)
         {
            this.var_974[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_633)
         {
            return this.var_975[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_633)
         {
            this.var_975[param1] = param2;
         }
      }
   }
}
