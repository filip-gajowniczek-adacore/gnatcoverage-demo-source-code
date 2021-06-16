--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests;

with GNATtest_Generated;

package Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data is

--  begin read only
   type Test_Running_Average_Alarm_Type is new
     GNATtest_Generated.GNATtest_Standard.Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests.Test_Alarm_Type
--  end read only
   with null record;

   procedure Set_Up (Gnattest_T : in out Test_Running_Average_Alarm_Type);
   procedure Tear_Down (Gnattest_T : in out Test_Running_Average_Alarm_Type);

end Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data;
