package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_161:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_615:String = "";
      
      private var var_953:String = "";
      
      private var var_1906:String = "";
      
      private var var_2197:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_161,param1,param7,param8);
         this._userId = param2;
         this.var_615 = param3;
         this.var_953 = param4;
         this.var_1906 = param5;
         this.var_2197 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_615;
      }
      
      public function get gender() : String
      {
         return this.var_953;
      }
      
      public function get customInfo() : String
      {
         return this.var_1906;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2197;
      }
   }
}
