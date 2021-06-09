with Ada.Real_Time; use Ada.Real_Time;

package Input is

   type Input_Type is new String(1..2);
   
   function Get_Input( timeout : Time_Span; Read_Input : out Input_Type ) 
                      return Boolean;
   
private
   task Read_Task;
   
end Input;
