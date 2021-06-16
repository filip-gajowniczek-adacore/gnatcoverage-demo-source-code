--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with AUnit.Test_Fixtures;

generic
   type GNATtest_Test_Type is new AUnit.Test_Fixtures.Test_Fixture
     with private;
package RunningAverage.Test_Data is

   --  Array of Generic elements
   type Test_Value_Array is array (1..3) of T;

--  begin read only
   type Test is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      -- Generic fields to be used in the tests
      Test_Object : Averager_Type;
      Test_Values : Test_Value_Array;
      Expected_Average : Float;
   end record;

   procedure Set_Up (Gnattest_T : in out Test);
   procedure Tear_Down (Gnattest_T : in out Test);

   procedure User_Set_Up (Gnattest_T : in out Test);
   procedure User_Tear_Down (Gnattest_T : in out Test);

end RunningAverage.Test_Data;
