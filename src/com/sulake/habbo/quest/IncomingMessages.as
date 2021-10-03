package com.sulake.habbo.quest
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.notifications.ActivityPointsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.HabboActivityPointNotificationMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.AvailableQuestCampaignsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.ExpiredQuestCampaignsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestAcceptedMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestCompletedMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestListMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.RoomEntryInfoMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.session.CloseConnectionMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.quest.GetAvailableQuestCampaignsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.quest.GetExpiredQuestCampaignsMessageComposer;
   import com.sulake.habbo.communication.messages.parser.quest.AvailableQuestCampaignsMessageParser;
   import com.sulake.habbo.communication.messages.parser.quest.ExpiredQuestCampaignsMessageParser;
   import com.sulake.habbo.communication.messages.parser.quest.QuestAcceptedMessageParser;
   import com.sulake.habbo.communication.messages.parser.quest.QuestCompletedMessageParser;
   import com.sulake.habbo.communication.messages.parser.quest.QuestListMessageParser;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class IncomingMessages implements IDisposable
   {
       
      
      private var var_87:HabboQuestEngine;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1935:IAlertDialog;
      
      private var var_657:Boolean = false;
      
      public function IncomingMessages(param1:HabboQuestEngine)
      {
         super();
         this.var_87 = param1;
         this._communication = this.var_87.communication;
         this._communication.addHabboConnectionMessageEvent(new QuestListMessageEvent(this.onQuestList));
         this._communication.addHabboConnectionMessageEvent(new QuestAcceptedMessageEvent(this.onQuestAccepted));
         this._communication.addHabboConnectionMessageEvent(new QuestCompletedMessageEvent(this.onQuestCompleted));
         this._communication.addHabboConnectionMessageEvent(new CloseConnectionMessageEvent(this.onRoomExit));
         this._communication.addHabboConnectionMessageEvent(new RoomEntryInfoMessageEvent(this.onRoomEnter));
         this._communication.addHabboConnectionMessageEvent(new HabboActivityPointNotificationMessageEvent(this.onActivityPointNotification));
         this._communication.addHabboConnectionMessageEvent(new ActivityPointsMessageEvent(this.onActivityPoints));
         this._communication.addHabboConnectionMessageEvent(new AvailableQuestCampaignsMessageEvent(this.onAvailableQuestCampaigns));
         this._communication.addHabboConnectionMessageEvent(new ExpiredQuestCampaignsMessageEvent(this.onExpiredQuestCampaigns));
      }
      
      public function get disposed() : Boolean
      {
         return this.var_657;
      }
      
      public function dispose() : void
      {
         if(this.var_1935)
         {
            this.var_1935.dispose();
            this.var_1935 = null;
         }
         this.var_657 = true;
      }
      
      private function onQuestList(param1:IMessageEvent) : void
      {
         var _loc2_:QuestListMessageParser = (param1 as QuestListMessageEvent).getParser();
         Logger.log("Got Quest List: " + _loc2_.campaignCode + " quests: " + _loc2_.quests.length);
         this.var_87.controller.openCampaign(_loc2_.campaignCode,_loc2_.activityPointType,_loc2_.quests);
      }
      
      private function onQuestAccepted(param1:IMessageEvent) : void
      {
         var _loc2_:QuestAcceptedMessageParser = (param1 as QuestAcceptedMessageEvent).getParser();
         Logger.log("Quest Accepted: " + _loc2_.campaignCode + " quest: " + _loc2_.questData.id);
         this.var_87.controller.questAccepted(_loc2_.campaignCode,_loc2_.questData);
      }
      
      private function onQuestCompleted(param1:IMessageEvent) : void
      {
         var _loc2_:QuestCompletedMessageParser = (param1 as QuestCompletedMessageEvent).getParser();
         Logger.log("Quest Completed: " + _loc2_.campaignCode + " quest: " + _loc2_.questData.id);
         this.var_87.controller.questCompleted(_loc2_.campaignCode,_loc2_.questData);
      }
      
      private function onAvailableQuestCampaigns(param1:IMessageEvent) : void
      {
         var _loc2_:AvailableQuestCampaignsMessageParser = (param1 as AvailableQuestCampaignsMessageEvent).getParser();
         var _loc3_:Array = _loc2_.campaignCodes.concat();
         var _loc4_:String = this.var_87.configuration.getKey("questing.excludedCampaignCode","");
         if(this.var_87.defaultCampaignCode == _loc4_)
         {
            this.var_87.defaultCampaignCode = "";
         }
         var _loc5_:int = _loc3_.indexOf(_loc4_);
         if(_loc4_ && _loc4_ != "" && _loc5_ > -1)
         {
            _loc3_.splice(_loc5_,1);
         }
         Logger.log("Got Available Quest Campaigns: " + _loc2_.campaignCodes + " after exclude: " + _loc3_);
         if(_loc3_.length == 0)
         {
            this.setQuestingEnabled(false);
         }
         else
         {
            this.setQuestingEnabled(true);
            this.var_87.controller.openCampaigns(_loc3_);
         }
      }
      
      private function onCloseAlert(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      private function onExpiredQuestCampaigns(param1:IMessageEvent) : void
      {
         var _loc2_:ExpiredQuestCampaignsMessageParser = (param1 as ExpiredQuestCampaignsMessageEvent).getParser();
         Logger.log("Got Expired Quest Campaigns: " + _loc2_.campaignCodes);
         if(_loc2_.campaignCodes.length > 0)
         {
            this.var_87.controller.openCampaigns(_loc2_.campaignCodes,true);
         }
      }
      
      private function onRoomEnter(param1:IMessageEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(this.var_87.toolbar != null && this.var_87.configuration != null)
         {
            _loc2_ = this.var_87.configuration.getKey("questing.defaultCampaign","");
            _loc3_ = this.var_87.configuration.getKey("questing.defaultCampaign.override","");
            _loc4_ = this.var_87.configuration.getKey("questing.excludedCampaignCode","");
            _loc5_ = _loc2_ && _loc2_ != "" ? _loc2_ : "";
            _loc5_ = _loc3_ && _loc3_ != "" && _loc3_ != _loc4_ ? _loc3_ : _loc5_;
            this.var_87.defaultCampaignCode = _loc5_;
            this._communication.getHabboMainConnection(null).send(new GetAvailableQuestCampaignsMessageComposer());
         }
      }
      
      private function setQuestingEnabled(param1:Boolean) : void
      {
         if(this.var_87.toolbar != null)
         {
            if(param1)
            {
               this.var_87.toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_120,HabboToolbarIconEnum.QUESTS));
               this._communication.getHabboMainConnection(null).send(new GetExpiredQuestCampaignsMessageComposer());
            }
            else
            {
               this.var_87.toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_138,HabboToolbarIconEnum.QUESTS));
            }
         }
      }
      
      private function onRoomExit(param1:IMessageEvent) : void
      {
         this.var_87.controller.close();
         this.var_87.toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_138,HabboToolbarIconEnum.QUESTS));
      }
      
      private function onActivityPointNotification(param1:IMessageEvent) : void
      {
         var _loc2_:HabboActivityPointNotificationMessageEvent = param1 as HabboActivityPointNotificationMessageEvent;
         Logger.log("Got balance update");
         this.var_87.controller.updatePurse();
      }
      
      private function onActivityPoints(param1:IMessageEvent) : void
      {
         var _loc2_:ActivityPointsMessageEvent = param1 as ActivityPointsMessageEvent;
         Logger.log("Got balance");
         this.var_87.controller.updatePurse();
      }
   }
}
