--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into RunningAverage.Test_Data.

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
package body RunningAverage.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Add_Sample (Gnattest_T : in out Test);
   procedure Test_Add_Sample_df7c8a (Gnattest_T : in out Test) renames Test_Add_Sample;
--  id:2.2/df7c8af5c590aa8b/Add_Sample/1/0/
   procedure Test_Add_Sample (Gnattest_T : in out Test) is
   --  runningaverage.ads:7:4:Add_Sample
--  end read only

   begin

      AUnit.Assertions.Assert
        ( Gnattest_T.Test_Object.Sample_Count = 0,
          "Initial Sample Count nonzero");

      Add_Sample(Gnattest_T.Test_Object, T'First);

      AUnit.Assertions.Assert
        ( Gnattest_T.Test_Object.Sample_Count = 1,
         "Sample Count does not increase after adding a sample");

--  begin read only
   end Test_Add_Sample;
--  end read only


--  begin read only
   procedure Test_Get_Average (Gnattest_T : in out Test);
   procedure Test_Get_Average_f2073e (Gnattest_T : in out Test) renames Test_Get_Average;
--  id:2.2/f2073e6262521553/Get_Average/1/0/
   procedure Test_Get_Average (Gnattest_T : in out Test) is
   --  runningaverage.ads:8:4:Get_Average
--  end read only

   begin

      for Value of Gnattest_T.Test_Values loop
         Add_Sample(Gnattest_T.Test_Object, Value);
      end loop;

      AUnit.Assertions.Assert
        ( Get_Average(Gnattest_T.Test_Object) = Gnattest_T.Expected_Average,
          "Incorrectly calculates the average of several values");

--  begin read only
   end Test_Get_Average;
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
end RunningAverage.Test_Data.Tests;
