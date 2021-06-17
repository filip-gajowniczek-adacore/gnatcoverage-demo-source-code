with Ada.Text_IO; Use Ada.Text_IO;


package body Input is
   
   Running : Boolean := True;
   
   procedure Stop is
   begin
      Running := False;
   end Stop;
   
   Read_Character : Character;
   RX_Flag : Boolean := False;
   
   procedure Get_Input( timeout : Time_Span; Out_Character : out Character ) is
   begin
      delay until Clock + timeout;
      
      if RX_Flag then 
         Out_Character := Read_Character;
         RX_Flag := false;
      else
         raise Timeout_Exception;
      end if;
   end Get_Input;
   
   
   
   task body Read_Task is
   begin
      while Running loop
         if not RX_Flag then 
            Get (Read_Character);
            RX_Flag := true;
         end if;
         delay until Clock + Milliseconds(1);
      end loop;
   end Read_Task;
   
end Input;
