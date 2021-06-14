with Ada.Real_Time; use Ada.Real_Time;

package Input is
   
   function Get_Input( timeout : Time_Span; Out_Character : out Character ) 
                      return Boolean;
   
private
   task Read_Task;
   
end Input;
