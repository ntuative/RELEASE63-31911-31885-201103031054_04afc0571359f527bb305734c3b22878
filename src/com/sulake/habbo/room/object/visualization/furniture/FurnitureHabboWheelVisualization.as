package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_924:int = 10;
      
      private static const const_608:int = 20;
      
      private static const const_1262:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_297:Array;
      
      private var var_726:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_297 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_726)
            {
               this.var_726 = true;
               this.var_297 = new Array();
               this.var_297.push(const_1262);
               this.var_297.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_924)
         {
            if(this.var_726)
            {
               this.var_726 = false;
               this.var_297 = new Array();
               this.var_297.push(const_924 + param1);
               this.var_297.push(const_608 + param1);
               this.var_297.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
