--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data.

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
package body Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data.Running_Average_Alarm_Type_Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Update (Gnattest_T : in out Test_Running_Average_Alarm_Type);
   procedure Test_Update_f6e163 (Gnattest_T : in out Test_Running_Average_Alarm_Type) renames Test_Update;
--  id:2.2/f6e1635b9b7a08b6/Update/1/0/
   procedure Test_Update (Gnattest_T : in out Test_Running_Average_Alarm_Type) is
   --  alarms-runningaveragealarm.ads:8:4:Update
--  end read only
   begin


      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Update(4) = False,
         "Alarming on average of {4}");


      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Update(6) = True,
         "Not alarming on average of {4,6}");

--  begin read only
   end Test_Update;
--  end read only


--  begin read only
   procedure Test_Reset (Gnattest_T : in out Test_Running_Average_Alarm_Type);
   procedure Test_Reset_a54cb3 (Gnattest_T : in out Test_Running_Average_Alarm_Type) renames Test_Reset;
--  id:2.2/a54cb32691e42b2b/Reset/1/0/
   procedure Test_Reset (Gnattest_T : in out Test_Running_Average_Alarm_Type) is
   --  alarms-runningaveragealarm.ads:11:4:Reset
--  end read only

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Reset;
--  end read only


--  begin read only
   procedure Test_Is_Alarming (Gnattest_T : in out Test_Running_Average_Alarm_Type);
   procedure Test_Is_Alarming_16c7b9 (Gnattest_T : in out Test_Running_Average_Alarm_Type) renames Test_Is_Alarming;
--  id:2.2/16c7b9213e2dda3d/Is_Alarming/1/0/
   procedure Test_Is_Alarming (Gnattest_T : in out Test_Running_Average_Alarm_Type) is
   --  alarms-runningaveragealarm.ads:13:4:Is_Alarming
--  end read only

   begin

      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Is_Alarming = False,
         "Alarming in initial state");

      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Update(6) = True,
         "Not alarming on average of {6}");

      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Is_Alarming = True,
         "Not alarming on average of {6}");

--  begin read only
   end Test_Is_Alarming;
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
end Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data.Running_Average_Alarm_Type_Tests;
