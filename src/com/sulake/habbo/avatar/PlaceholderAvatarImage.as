package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_712:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_657)
         {
            _structure = null;
            _assets = null;
            var_253 = null;
            var_267 = null;
            var_615 = null;
            var_527 = null;
            var_314 = null;
            if(!var_1232 && var_44)
            {
               var_44.dispose();
            }
            var_44 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_755 = null;
            var_657 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_712[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_712[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_371:
               switch(_loc3_)
               {
                  case AvatarAction.const_827:
                  case AvatarAction.const_476:
                  case AvatarAction.const_335:
                  case AvatarAction.const_841:
                  case AvatarAction.const_382:
                  case AvatarAction.const_855:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_289:
            case AvatarAction.const_811:
            case AvatarAction.const_245:
            case AvatarAction.const_800:
            case AvatarAction.const_764:
            case AvatarAction.const_778:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
