package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1363:int = 2;
      
      private static const const_1362:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_297:Array;
      
      private var var_1208:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_297 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1363)
         {
            this.var_297 = new Array();
            this.var_297.push(const_1362);
            this.var_1208 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1208 > 0)
         {
            --this.var_1208;
         }
         if(this.var_1208 == 0)
         {
            if(this.var_297.length > 0)
            {
               super.setAnimation(this.var_297.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
