--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into ProtocolHandler.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;
with Input.Stub_Data; use Input.Stub_Data;
with Alarms.RunningAverageAlarm.Stub_Data; use Alarms.RunningAverageAlarm.Stub_Data;
with Alarms.Stub_Data; use Alarms.Stub_Data;
with Math.Stub_Data; use Math.Stub_Data;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body ProtocolHandler.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Run (Gnattest_T : in out Test);
   procedure Test_Run_d158ab (Gnattest_T : in out Test) renames Test_Run;
--  id:2.2/d158ab23490c4f6c/Run/1/0/
   procedure Test_Run (Gnattest_T : in out Test) is
   --  protocolhandler.ads:5:4:Run
--  end read only
   begin


      --  Alarms.RunningAverageAlarm.Stub_Data.Set_Stub_Update_f6e163_2b98d1( Alarm, False );
      Stub_Data_Update_1449e8_2b98d1.Update_Result := False;
      Input.Stub_Data.Set_Stub_Get_Input_d1358d_b568d4('1');

      AUnit.Assertions.Assert
        (Run = False,
         "Processing an input of '1' raised an error");

--  begin read only
   end Test_Run;
--  end read only


--  begin read only
   procedure Test_Get_Accumulation (Gnattest_T : in out Test);
   procedure Test_Get_Accumulation_92118c (Gnattest_T : in out Test) renames Test_Get_Accumulation;
--  id:2.2/92118ca0f5d9af57/Get_Accumulation/1/0/
   procedure Test_Get_Accumulation (Gnattest_T : in out Test) is
   --  protocolhandler.ads:7:4:Get_Accumulation
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Get_Accumulation;
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
end ProtocolHandler.Test_Data.Tests;
