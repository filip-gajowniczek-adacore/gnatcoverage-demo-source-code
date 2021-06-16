--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Gnattest_Generated;
with AUnit.Test_Caller;

package ProtocolHandler.Test_Data.Tests is

   type Test is new GNATtest_Generated.GNATtest_Standard.ProtocolHandler.Test_Data.Test
   with null record;

   procedure Test_Run_d158ab (Gnattest_T : in out Test);
   --  protocolhandler.ads:5:4:Run

   procedure Test_Get_Accumulation_92118c (Gnattest_T : in out Test);
   --  protocolhandler.ads:7:4:Get_Accumulation

   package Caller is new AUnit.Test_Caller (Test);

end ProtocolHandler.Test_Data.Tests;
--  end read only
