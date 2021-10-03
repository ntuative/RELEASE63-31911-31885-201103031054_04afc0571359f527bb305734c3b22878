package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_924:int = 20;
      
      private static const const_608:int = 10;
      
      private static const const_1262:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_297:Array;
      
      private var var_726:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_297 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_608)
         {
            if(this.var_726)
            {
               this.var_726 = false;
               this.var_297 = new Array();
               if(_direction == 2)
               {
                  this.var_297.push(const_924 + 5 - param1);
                  this.var_297.push(const_608 + 5 - param1);
               }
               else
               {
                  this.var_297.push(const_924 + param1);
                  this.var_297.push(const_608 + param1);
               }
               this.var_297.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
