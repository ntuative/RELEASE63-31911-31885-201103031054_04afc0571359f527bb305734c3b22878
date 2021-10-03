package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1850:int;
      
      private var _name:String;
      
      private var var_1452:int;
      
      private var var_2614:int;
      
      private var var_2411:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_615:String;
      
      private var var_2612:int;
      
      private var var_2615:int;
      
      private var var_2613:int;
      
      private var var_2431:int;
      
      private var var_2558:int;
      
      private var _ownerName:String;
      
      private var var_499:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1850;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1452;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2614;
      }
      
      public function get experience() : int
      {
         return this.var_2411;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2612;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2615;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2613;
      }
      
      public function get respect() : int
      {
         return this.var_2431;
      }
      
      public function get ownerId() : int
      {
         return this.var_2558;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_499;
      }
      
      public function flush() : Boolean
      {
         this.var_1850 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1850 = param1.readInteger();
         this._name = param1.readString();
         this.var_1452 = param1.readInteger();
         this.var_2614 = param1.readInteger();
         this.var_2411 = param1.readInteger();
         this.var_2612 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2615 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2613 = param1.readInteger();
         this.var_615 = param1.readString();
         this.var_2431 = param1.readInteger();
         this.var_2558 = param1.readInteger();
         this.var_499 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
