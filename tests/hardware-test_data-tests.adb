--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into hardware.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body hardware.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Get_State (Gnattest_T : in out Test);
   procedure Test_Get_State_bb47db (Gnattest_T : in out Test) renames Test_Get_State;
--  id:2.2/bb47db2200d60f08/Get_State/1/0/
   procedure Test_Get_State (Gnattest_T : in out Test) is
   --  hardware.ads:10:4:Get_State
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Get_State;
--  end read only


--  begin read only
   procedure Test_Action1 (Gnattest_T : in out Test);
   procedure Test_Action1_0f9933 (Gnattest_T : in out Test) renames Test_Action1;
--  id:2.2/0f9933a94127dbd7/Action1/1/0/
   procedure Test_Action1 (Gnattest_T : in out Test) is
   --  hardware.ads:12:4:Action1
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Action1;
--  end read only


--  begin read only
   procedure Test_Action2 (Gnattest_T : in out Test);
   procedure Test_Action2_10b344 (Gnattest_T : in out Test) renames Test_Action2;
--  id:2.2/10b344c9cdca3fde/Action2/1/0/
   procedure Test_Action2 (Gnattest_T : in out Test) is
   --  hardware.ads:14:4:Action2
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Action2;
--  end read only


--  begin read only
   procedure Test_Action3 (Gnattest_T : in out Test);
   procedure Test_Action3_56a737 (Gnattest_T : in out Test) renames Test_Action3;
--  id:2.2/56a737ec12cf7c70/Action3/1/0/
   procedure Test_Action3 (Gnattest_T : in out Test) is
   --  hardware.ads:16:4:Action3
--  end read only

      Initial_State : State_Type := Get_State;

   begin

      Action3;

      AUnit.Assertions.Assert
        (Get_State.X = Initial_State.Y and Get_State.Y = Initial_State.X,
         "Action 3 does not swap");

--  begin read only
   end Test_Action3;
--  end read only


--  begin read only
   procedure Test_Action4 (Gnattest_T : in out Test);
   procedure Test_Action4_45670c (Gnattest_T : in out Test) renames Test_Action4;
--  id:2.2/45670c5fad48822e/Action4/1/0/
   procedure Test_Action4 (Gnattest_T : in out Test) is
   --  hardware.ads:18:4:Action4
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Action4;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end hardware.Test_Data.Tests;
