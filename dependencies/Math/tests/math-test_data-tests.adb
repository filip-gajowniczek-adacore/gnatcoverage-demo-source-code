--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Math.Test_Data.

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
package body Math.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Add (Gnattest_T : in out Test);
   procedure Test_Add_56cde2 (Gnattest_T : in out Test) renames Test_Add;
--  id:2.2/56cde2b2526cb34c/Add/1/0/
   procedure Test_Add (Gnattest_T : in out Test) is
   --  math.ads:2:4:Add
--  end read only

   begin

      AUnit.Assertions.Assert
        (Add(Gnattest_T.Value1,Gnattest_T.Value1) = 2,
         "Trivial addition failed");

--  begin read only
   end Test_Add;
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
end Math.Test_Data.Tests;
