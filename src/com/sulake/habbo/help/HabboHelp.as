package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_179:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_277:IHabboCommunicationManager;
      
      private var var_932:IHabboLocalizationManager;
      
      private var var_744:IHabboConfigurationManager;
      
      private var var_276:ISessionDataManager;
      
      private var var_1135:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_63:HelpUI;
      
      private var var_101:TutorialUI;
      
      private var var_743:HotelMergeUI;
      
      private var var_931:RegistrationUI;
      
      private var var_1406:CallForHelpData;
      
      private var var_2436:UserRegistry;
      
      private var var_2435:String = "";
      
      private var var_933:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1406 = new CallForHelpData();
         this.var_2436 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1135 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2435 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2435;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1406;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2436;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_932;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_179;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_276;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_101;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_743;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_101)
         {
            return this.var_101.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.dispose();
            this.var_63 = null;
         }
         if(this.var_101 != null)
         {
            this.var_101.dispose();
            this.var_101 = null;
         }
         if(this.var_743)
         {
            this.var_743.dispose();
            this.var_743 = null;
         }
         if(this.var_931 != null)
         {
            this.var_931.dispose();
            this.var_931 = null;
         }
         if(this.var_1135 != null)
         {
            this.var_1135.dispose();
            this.var_1135 = null;
         }
         this._incomingMessages = null;
         if(this.var_179)
         {
            this.var_179.release(new IIDHabboToolbar());
            this.var_179 = null;
         }
         if(this.var_932)
         {
            this.var_932.release(new IIDHabboLocalizationManager());
            this.var_932 = null;
         }
         if(this.var_277)
         {
            this.var_277.release(new IIDHabboCommunicationManager());
            this.var_277 = null;
         }
         if(this.var_744)
         {
            this.var_744.release(new IIDHabboConfigurationManager());
            this.var_744 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_276 != null)
         {
            this.var_276.release(new IIDSessionDataManager());
            this.var_276 = null;
         }
         if(this.var_933 != null)
         {
            this.var_933.dispose();
            this.var_933 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_63 != null)
         {
            this.var_63.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1135;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_277 != null && param1 != null)
         {
            this.var_277.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_744 == null)
         {
            return param1;
         }
         return this.var_744.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_63 != null)
         {
            this.var_63.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1406.reportedUserId = param1;
         this.var_1406.reportedUserName = param2;
         this.var_63.showUI(HabboHelpViewEnum.const_375);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_63 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_63.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_63 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_63 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_932,this.var_179);
         }
         return this.var_63 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_101 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_101 = new TutorialUI(this,_loc1_);
         }
         return this.var_101 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_101 != null)
         {
            this.var_101.dispose();
            this.var_101 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_743)
         {
            this.var_743 = new HotelMergeUI(this);
         }
         this.var_743.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_931)
         {
            this.var_931 = new RegistrationUI(this);
         }
         this.var_931.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_101 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_101.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_101)
         {
            this.var_101.showView(TutorialUI.const_283);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_277 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_277);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_179 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_932 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_744 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_89,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_97,this.onRoomSessionEvent);
         this.var_179.events.addEventListener(HabboToolbarEvent.const_70,this.onHabboToolbarEvent);
         this.var_179.events.addEventListener(HabboToolbarEvent.const_37,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_276 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_89:
               if(this.var_63 != null)
               {
                  this.var_63.setRoomSessionStatus(true);
               }
               if(this.var_101 != null)
               {
                  this.var_101.setRoomSessionStatus(true);
               }
               this.showWelcomeScreen(true);
               break;
            case RoomSessionEvent.const_97:
               if(this.var_63 != null)
               {
                  this.var_63.setRoomSessionStatus(false);
               }
               if(this.var_101 != null)
               {
                  this.var_101.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
               this.showWelcomeScreen(false);
         }
      }
      
      private function showWelcomeScreen(param1:Boolean) : void
      {
         if(!this.var_933)
         {
            this.var_933 = new WelcomeScreenController(this,this._windowManager,this.var_744);
         }
         this.var_933.showWelcomeScreen(param1);
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_179 != null)
         {
            this.var_179.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_120,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_70)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_37)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
