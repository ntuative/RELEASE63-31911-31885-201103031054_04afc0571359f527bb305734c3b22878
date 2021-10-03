package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_959:BigInteger;
      
      private var var_2305:BigInteger;
      
      private var var_1787:BigInteger;
      
      private var var_2477:BigInteger;
      
      private var var_1411:BigInteger;
      
      private var var_1786:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1411 = param1;
         this.var_1786 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1411.toString() + ",generator: " + this.var_1786.toString() + ",secret: " + param1);
         this.var_959 = new BigInteger();
         this.var_959.fromRadix(param1,param2);
         this.var_2305 = this.var_1786.modPow(this.var_959,this.var_1411);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1787 = new BigInteger();
         this.var_1787.fromRadix(param1,param2);
         this.var_2477 = this.var_1787.modPow(this.var_959,this.var_1411);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2305.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2477.toRadix(param1);
      }
   }
}
