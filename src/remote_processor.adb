with Worker; use Worker;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Remote_Processor is

   Cycle_Counter : Integer := 0;

begin

   Put_Line ("Remote Processor Running");

   while Cycle_Counter <= 15 loop
      Cycle_Counter := Cycle_Counter + 1;

      if Get_State > 20 then
         Reset_State;
      elsif Cycle_Counter mod 3 /= 0 then
         Work1;
      elsif Get_State mod 4 /= 0 or Cycle_Counter mod 17 = 0 then
         Work3;
      elsif Get_State mod 12 /= 0 then
         Work2;
      end if;

      Put_Line ("State: " & Get_State'Image);

      delay until Clock + Seconds(1);
   end loop;
end Remote_Processor;
