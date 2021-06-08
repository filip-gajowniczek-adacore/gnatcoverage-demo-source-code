with Hardware; use Hardware;
with Ada.Text_IO; use Ada.Text_IO;

package body Worker is

   State : Integer := 0;
   
   procedure Do_Work is
      State : State_Type := Get_State;
   begin
      
      Action2;
      
      if State.X mod 2 = 0 then
         Put_Line ("Performing Action 1");
         Action1;
      end if;
      
      if State.X mod 2 = 0 and then State.Y mod 2 = 0 then
         Put_Line ("Performing Action 4");
         Action4;
      end if;
      
      if State.X > State.Y then 
         Put_Line ("Performing Action 3");
         Action3;
      end if;
      
      Put_Line ( "X:" & State.X'Image & " Y:" & State.Y'Image );
      
   end Do_Work;
   
end Worker;
