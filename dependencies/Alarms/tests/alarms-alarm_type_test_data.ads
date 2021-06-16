--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package Alarms.Alarm_Type_Test_Data is

   type Alarm_Type_Access is access all GNATtest_Generated.GNATtest_Standard.Alarms.Alarm_Type'Class;

--  begin read only
   type Test_Alarm_Type is abstract new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Alarm_Type_Access;
   end record;

end Alarms.Alarm_Type_Test_Data;
