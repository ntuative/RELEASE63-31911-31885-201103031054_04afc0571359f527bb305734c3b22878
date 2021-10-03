package com.sulake.habbo.sound
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.incoming.sound.TraxSongInfoMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetSongInfoMessageComposer;
   import com.sulake.habbo.communication.messages.parser.sound.TraxSongInfoMessageParser;
   import com.sulake.habbo.sound.trax.TraxSequencer;
   import flash.events.IEventDispatcher;
   
   public class HabboMusicController implements IHabboMusicController, IDisposable
   {
      
      private static const const_1231:int = -1;
       
      
      private var var_553:HabboSoundManagerFlash10;
      
      private var _connection:IConnection;
      
      private var _events:IEventDispatcher;
      
      private var var_78:IEventDispatcher;
      
      private var var_381:Map;
      
      private var var_662:Array;
      
      private var var_1264:Map;
      
      private var var_817:RoomItemPlayListController = null;
      
      private var _disposed:Boolean = false;
      
      private var var_816:Map;
      
      private var var_1265:int;
      
      public function HabboMusicController(param1:HabboSoundManagerFlash10, param2:IEventDispatcher, param3:IEventDispatcher, param4:IConnection)
      {
         this.var_381 = new Map();
         this.var_662 = new Array();
         this.var_1264 = new Map();
         this.var_816 = new Map();
         this.var_1265 = HabboMusicPrioritiesEnum.const_1052;
         super();
         this.var_553 = param1;
         this._events = param2;
         this.var_78 = param3;
         this._connection = param4;
         this.var_817 = new RoomItemPlayListController(param1,this,param2,param3,param4);
         this._connection.addMessageEvent(new TraxSongInfoMessageEvent(this.onSongInfoMessage));
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_553 = null;
            this._connection = null;
            this.var_662 = null;
            this.var_817 = null;
            if(this.var_381)
            {
               this.var_381.dispose();
               this.var_381 = null;
            }
            this._disposed = true;
         }
      }
      
      public function getRoomItemPlaylist(param1:int = -1) : IPlayListController
      {
         return this.var_817 as IPlayListController;
      }
      
      public function playSong(param1:int, param2:int, param3:Number = 0) : Boolean
      {
         var _loc5_:* = null;
         var _loc4_:TraxSequencer = this.var_381.getValue(param1) as TraxSequencer;
         if(_loc4_ == null)
         {
            this.requestSongInfo(param1);
            _loc5_ = new Date();
            this.var_1264.add(param1,_loc5_.getTime());
            return false;
         }
         if(!_loc4_.ready)
         {
            return false;
         }
         if(this.playSongObjectWithPriority(_loc4_,param1,param2,param3))
         {
            Logger.log("Started playing song: " + param1);
         }
         else
         {
            Logger.log("Song play was rejected because of low priority: " + param1);
         }
         return true;
      }
      
      public function stopSong(param1:int) : void
      {
         var _loc2_:IHabboSound = this.var_381.getValue(param1) as IHabboSound;
         if(_loc2_ != null)
         {
            _loc2_.stop();
         }
      }
      
      public function previewSong(param1:int, param2:int) : void
      {
      }
      
      public function getSongObject(param1:int) : IHabboSound
      {
         return this.var_381.getValue(param1) as IHabboSound;
      }
      
      public function updateVolume(param1:Number) : void
      {
         this.var_817.updateVolume(param1);
      }
      
      public function onSongLoaded(param1:int) : void
      {
         this.var_817.checkSongPlayState(param1);
      }
      
      public function requestSongInfo(param1:int) : void
      {
         if(this.var_381.getValue(param1) != null)
         {
            return;
         }
         if(this._connection == null)
         {
            return;
         }
         this._connection.send(new GetSongInfoMessageComposer(param1));
         if(this.var_662.indexOf(param1) == -1)
         {
            this.var_662.push(param1);
         }
      }
      
      private function onSongInfoMessage(param1:IMessageEvent) : void
      {
         var _loc5_:* = null;
         var _loc2_:TraxSongInfoMessageEvent = param1 as TraxSongInfoMessageEvent;
         var _loc3_:TraxSongInfoMessageParser = _loc2_.getParser() as TraxSongInfoMessageParser;
         this.var_662 = this.var_662.splice(this.var_662.indexOf(_loc3_.id),1);
         _loc5_ = this.var_381[_loc3_.id] as IHabboSound;
         if(_loc5_ == null)
         {
            _loc5_ = this.var_553.loadTraxSong(_loc3_.id,_loc3_.data);
            this.var_381.add(_loc3_.id,_loc5_);
         }
         this.var_817.checkSongPlayState(_loc3_.id);
      }
      
      private function playSongObjectWithPriority(param1:TraxSequencer, param2:int, param3:int, param4:Number) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         if(this.var_816.getKeys().indexOf(param3) != -1)
         {
            this.var_816.add(param3,param1);
         }
         else
         {
            this.var_816[param3] = param1;
         }
         if(param3 >= this.var_1265)
         {
            _loc5_ = this.var_816[this.var_1265];
            _loc5_.stop();
            param1.volume = this.var_553.volume;
            param1.position = param4;
            if(param2 != const_1231)
            {
               if(this.var_1264.getKeys().indexOf(param2) != -1)
               {
                  _loc6_ = new Date();
                  _loc7_ = (_loc6_.getTime() - this.var_1264[param2]) / 1000;
                  param1.position += _loc7_;
               }
               param1.play();
               this.var_1265 = param3;
            }
         }
         return true;
      }
      
      private function getTopPriority() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = -1;
         for each(_loc2_ in this.var_816.getKeys())
         {
            if(_loc2_ > _loc1_)
            {
               _loc1_ = _loc2_;
            }
         }
         return _loc1_;
      }
   }
}
