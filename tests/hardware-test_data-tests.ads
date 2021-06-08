--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Gnattest_Generated;
with AUnit.Test_Caller;

package hardware.Test_Data.Tests is

   type Test is new GNATtest_Generated.GNATtest_Standard.hardware.Test_Data.Test
   with null record;

   procedure Test_Get_State_bb47db (Gnattest_T : in out Test);
   --  hardware.ads:10:4:Get_State

   procedure Test_Action1_0f9933 (Gnattest_T : in out Test);
   --  hardware.ads:12:4:Action1

   procedure Test_Action2_10b344 (Gnattest_T : in out Test);
   --  hardware.ads:14:4:Action2

   procedure Test_Action3_56a737 (Gnattest_T : in out Test);
   --  hardware.ads:16:4:Action3

   procedure Test_Action4_45670c (Gnattest_T : in out Test);
   --  hardware.ads:18:4:Action4

   package Caller is new AUnit.Test_Caller (Test);

end hardware.Test_Data.Tests;
--  end read only
