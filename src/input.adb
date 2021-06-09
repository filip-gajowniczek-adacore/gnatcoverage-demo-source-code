with Ada.Text_IO; Use Ada.Text_IO;


package body Input is
   
   Input : Input_Type;
   RX_Flag : Boolean;
   
   function Get_Input( timeout : Time_Span; Read_Input : out Input_Type )
                      return Boolean is
   begin
      delay until Clock + timeout;
      
      if RX_Flag then 
         Read_Input := Input;
         RX_Flag := false;
         return True;
      else
         return False;
      end if;
   end Get_Input;
   
   task body Read_Task is
   begin
      while True loop
         Get( Input(1) );
         Get( Input(2) );
         RX_Flag := true;
         delay until Clock + Milliseconds(1);
      end loop;
   end Read_Task;
   
end Input;
