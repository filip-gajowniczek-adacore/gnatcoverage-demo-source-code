--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Worker.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;
with hardware.Stub_Data; use hardware.Stub_Data;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body Worker.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Do_Work (Gnattest_T : in out Test);
   procedure Test_Do_Work_a62d6e (Gnattest_T : in out Test) renames Test_Do_Work;
--  id:2.2/a62d6effabfcc64c/Do_Work/1/0/
   procedure Test_Do_Work (Gnattest_T : in out Test) is
   --  worker.ads:2:4:Do_Work
--  end read only

      Fake_State : Hardware.State_Type  := (X =>1, Y=>4);

   begin
      
      Set_Stub_Get_State_bb47db_608cb2 (Fake_State);
      
      Do_Work;
      
      AUnit.Assertions.Assert
        (Stub_Data_Action2_10b344_608cb2.Stub_Counter = 1 and
         Stub_Data_Action4_45670c_608cb2.Stub_Counter = 0,
         "Work for X=1, Y=4 incorrect");

--  begin read only
   end Test_Do_Work;
--  end read only


--  begin read only
   --  procedure Test_Work2 (Gnattest_T : in out Test_);
   --  procedure Test_Work2_42c428 (Gnattest_T : in out Test_) renames Test_Work2;
--  id:2.2/42c4283db31075ff/Work2/1/1/
   --  procedure Test_Work2 (Gnattest_T : in out Test_) is
--  end read only
--  
--     begin
--  
--        Reset_State;
--        Work1;
--        Work2;
--  
--        AUnit.Assertions.Assert
--          (Get_State = 0,
--           "Work 2 does not round down during division.");
--  
--  
--  
--  begin read only
   --  end Test_Work2;
--  end read only


--  begin read only
   --  procedure Test_Work3 (Gnattest_T : in out Test_);
   --  procedure Test_Work3_a5415e (Gnattest_T : in out Test_) renames Test_Work3;
--  id:2.2/a5415e95780e1c84/Work3/1/1/
   --  procedure Test_Work3 (Gnattest_T : in out Test_) is
--  end read only
--  
--        pragma Unreferenced (Gnattest_T);
--  
--     begin
--  
--        AUnit.Assertions.Assert
--          (Gnattest_Generated.Default_Assert_Value,
--           "Test not implemented.");
--  
--  begin read only
   --  end Test_Work3;
--  end read only


--  begin read only
   --  procedure Test_Work1 (Gnattest_T : in out Test_);
   --  procedure Test_Work1_acd4ff (Gnattest_T : in out Test_) renames Test_Work1;
--  id:2.2/acd4ff6828f072e5/Work1/1/1/
   --  procedure Test_Work1 (Gnattest_T : in out Test_) is
--  end read only
--  
--        pragma Unreferenced (Gnattest_T);
--  
--     begin
--  
--        AUnit.Assertions.Assert
--          (Gnattest_Generated.Default_Assert_Value,
--           "Test not implemented.");
--  
--  begin read only
   --  end Test_Work1;
--  end read only


--  begin read only
   --  procedure Test_Get_State (Gnattest_T : in out Test_);
   --  procedure Test_Get_State_b4077a (Gnattest_T : in out Test_) renames Test_Get_State;
--  id:2.2/b4077a4283c8378f/Get_State/1/1/
   --  procedure Test_Get_State (Gnattest_T : in out Test_) is
--  end read only
--  
--        pragma Unreferenced (Gnattest_T);
--  
--     begin
--  
--        AUnit.Assertions.Assert
--          (Gnattest_Generated.Default_Assert_Value,
--           "Test not implemented.");
--  
--  begin read only
   --  end Test_Get_State;
--  end read only


--  begin read only
   --  procedure Test_Reset_State (Gnattest_T : in out Test_);
   --  procedure Test_Reset_State_dbaa3e (Gnattest_T : in out Test_) renames Test_Reset_State;
--  id:2.2/dbaa3e524fa73843/Reset_State/1/1/
   --  procedure Test_Reset_State (Gnattest_T : in out Test_) is
--  end read only
--  
--        pragma Unreferenced (Gnattest_T);
--  
--     begin
--  
--        Reset_State;
--        AUnit.Assertions.Assert
--          (Get_State = 0,
--           "Reset doesn't reset to zero");
--  
--  begin read only
   --  end Test_Reset_State;
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
end Worker.Test_Data.Tests;
