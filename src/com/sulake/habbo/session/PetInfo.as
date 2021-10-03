package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1850:int;
      
      private var var_1452:int;
      
      private var var_2559:int;
      
      private var var_2411:int;
      
      private var var_2556:int;
      
      private var _energy:int;
      
      private var var_2560:int;
      
      private var _nutrition:int;
      
      private var var_2557:int;
      
      private var var_2558:int;
      
      private var _ownerName:String;
      
      private var var_2431:int;
      
      private var var_499:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1850;
      }
      
      public function get level() : int
      {
         return this.var_1452;
      }
      
      public function get levelMax() : int
      {
         return this.var_2559;
      }
      
      public function get experience() : int
      {
         return this.var_2411;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2556;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2560;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2557;
      }
      
      public function get ownerId() : int
      {
         return this.var_2558;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2431;
      }
      
      public function get age() : int
      {
         return this.var_499;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1850 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1452 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2559 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2411 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2556 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2560 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2557 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2558 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2431 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_499 = param1;
      }
   }
}
