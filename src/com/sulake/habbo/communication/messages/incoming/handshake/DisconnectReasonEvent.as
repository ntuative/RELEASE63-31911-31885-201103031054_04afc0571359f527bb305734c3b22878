package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1801:int = 0;
      
      public static const const_1663:int = 1;
      
      public static const const_1577:int = 2;
      
      public static const const_1919:int = 3;
      
      public static const const_1861:int = 4;
      
      public static const const_1821:int = 5;
      
      public static const const_1407:int = 10;
      
      public static const const_1836:int = 11;
      
      public static const const_1822:int = 12;
      
      public static const const_1787:int = 13;
      
      public static const const_1944:int = 16;
      
      public static const const_1940:int = 17;
      
      public static const const_1849:int = 18;
      
      public static const const_1777:int = 19;
      
      public static const const_1848:int = 20;
      
      public static const const_1926:int = 22;
      
      public static const const_1945:int = 23;
      
      public static const const_1749:int = 24;
      
      public static const const_1778:int = 25;
      
      public static const const_1743:int = 26;
      
      public static const const_1793:int = 27;
      
      public static const const_1843:int = 28;
      
      public static const const_1932:int = 29;
      
      public static const const_1775:int = 100;
      
      public static const const_1916:int = 101;
      
      public static const const_1732:int = 102;
      
      public static const const_1862:int = 103;
      
      public static const const_1754:int = 104;
      
      public static const const_1811:int = 105;
      
      public static const const_1768:int = 106;
      
      public static const const_1788:int = 107;
      
      public static const const_1874:int = 108;
      
      public static const const_1918:int = 109;
      
      public static const const_1912:int = 110;
      
      public static const const_1751:int = 111;
      
      public static const const_1799:int = 112;
      
      public static const const_1741:int = 113;
      
      public static const const_1949:int = 114;
      
      public static const const_1935:int = 115;
      
      public static const const_1943:int = 116;
      
      public static const const_1832:int = 117;
      
      public static const const_1869:int = 118;
      
      public static const const_1795:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1663:
            case const_1407:
               return "banned";
            case const_1577:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
