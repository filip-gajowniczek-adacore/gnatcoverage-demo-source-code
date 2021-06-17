with Ada.Real_Time; use Ada.Real_Time;

package Input is
   
   Timeout_Exception : Exception;
   
   procedure Get_Input( timeout : Time_Span; Out_Character : out Character );
   
   task Read_Task;
   
end Input;
