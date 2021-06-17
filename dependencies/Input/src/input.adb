with Ada.Text_IO; Use Ada.Text_IO;

package body Input is
   
   Read_Character : Character := ' ';
   
   procedure Get_Input( timeout : Time_Span; Out_Character : out Character ) is
   begin 
      delay until Clock + timeout; 
      if Read_Character = ' ' and then timeout /= Seconds(0) then
         raise Timeout_Exception;
      end if;
      Out_Character := Read_Character;
      Read_Character := ' ';
   end;
   
   task body Read_Task is
   begin 
      loop
         if Read_Character = ' ' then
            Get(Read_Character);
         end if;
         delay until Clock + Microseconds(1);
      end loop;
   end Read_task;
   
end Input;
