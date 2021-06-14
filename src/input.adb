with Ada.Text_IO; Use Ada.Text_IO;


package body Input is
   
   Read_Character : Character;
   RX_Flag : Boolean;
   
   function Get_Input( timeout : Time_Span; Out_Character : out Character )
                      return Boolean is
   begin
      delay until Clock + timeout;
      
      if RX_Flag then 
         Out_Character := Read_Character;
         RX_Flag := false;
         return True;
      else
         return False;
      end if;
   end Get_Input;
   
   task body Read_Task is
   begin
      while True loop
         Get( Read_Character );
         RX_Flag := true;
         delay until Clock + Milliseconds(1);
      end loop;
   end Read_Task;
   
end Input;
