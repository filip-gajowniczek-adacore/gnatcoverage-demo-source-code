--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Alarms.Alarm_Type_Test_Data.

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
package body Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Get_Monitor (Gnattest_T : in out Test_Alarm_Type);
   procedure Test_Get_Monitor_f48cad (Gnattest_T : in out Test_Alarm_Type) renames Test_Get_Monitor;
--  id:2.2/f48cadce795503ec/Get_Monitor/1/0/
   procedure Test_Get_Monitor (Gnattest_T : in out Test_Alarm_Type) is
   --  alarms.ads:5:4:Get_Monitor
--  end read only

   begin

      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Get_Monitor = 0,
         "Invalid initial Monitor");

--  begin read only
   end Test_Get_Monitor;
--  end read only


--  begin read only
   procedure Test_Is_Alarming (Gnattest_T : in out Test_Alarm_Type);
   procedure Test_Is_Alarming_16c7b9 (Gnattest_T : in out Test_Alarm_Type) renames Test_Is_Alarming;
--  id:2.2/16c7b9213e2dda3d/Is_Alarming/1/0/
   procedure Test_Is_Alarming (Gnattest_T : in out Test_Alarm_Type) is
   --  alarms.ads:11:4:Is_Alarming
--  end read only
   begin

      Gnattest_T.Fixture.All.Monitor := Gnattest_T.Fixture.All.Threshold;

      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Is_Alarming = True,
        "Not alarming when Monitor equals Threshold");

--  begin read only
   end Test_Is_Alarming;
--  end read only


--  begin read only
   procedure Test_Margin (Gnattest_T : in out Test_Alarm_Type);
   procedure Test_Margin_e7e1e7 (Gnattest_T : in out Test_Alarm_Type) renames Test_Margin;
--  id:2.2/e7e1e7946d11fc23/Margin/1/0/
   procedure Test_Margin (Gnattest_T : in out Test_Alarm_Type) is
   --  alarms.ads:13:4:Margin
--  end read only
   begin


      AUnit.Assertions.Assert
        (Gnattest_T.Fixture.All.Margin = 0,
         "Margin is nonzero when Monitor equals Threshold");

--  begin read only
   end Test_Margin;
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
end Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests;
