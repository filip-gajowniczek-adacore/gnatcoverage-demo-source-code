with Worker; use Worker;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Remote_Processor is

   Cycle_Counter : Integer := 0;

begin

   Put_Line ("Remote Processor Running");

   while Cycle_Counter <= 15 loop
      Cycle_Counter := Cycle_Counter + 1;

      if Cycle_Counter mod 3 = 0 then
         Work1;
      end if;

      if Cycle_Counter mod 5 = 0 then
         Work2;
      end if;

      if Get_State > 20 then
         Reset_State;
      end if;

      Put_Line ("State: " & Get_State'Image);

      delay until Clock + Seconds(1);
   end loop;
end Remote_Processor;
