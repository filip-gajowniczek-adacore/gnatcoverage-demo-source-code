--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data is

   Local_Running_Average_Alarm_Type : aliased GNATtest_Generated.GNATtest_Standard.Alarms.RunningAverageAlarm.Running_Average_Alarm_Type(5);
   procedure Set_Up (Gnattest_T : in out Test_Running_Average_Alarm_Type) is
   begin
      GNATtest_Generated.GNATtest_Standard.Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests.Set_Up
        (GNATtest_Generated.GNATtest_Standard.Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests.Test_Alarm_Type (Gnattest_T));
      null;
      Gnattest_T.Fixture := Local_Running_Average_Alarm_Type'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Running_Average_Alarm_Type) is
   begin
      GNATtest_Generated.GNATtest_Standard.Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests.Tear_Down
        (GNATtest_Generated.GNATtest_Standard.Alarms.Alarm_Type_Test_Data.Alarm_Type_Tests.Test_Alarm_Type (Gnattest_T));
   end Tear_Down;

end Alarms.RunningAverageAlarm.Running_Average_Alarm_Type_Test_Data;
