pragma Profile(Ravenscar);

with Worker; use Worker;
with Ada.Text_IO; use Ada.Text_IO;


procedure Remote_Processor is
   Cycle_Counter : Integer := 0;
begin
   Put_Line ("Remote Processor Running");

   while Cycle_Counter <= 15 loop
      Cycle_Counter := Cycle_Counter + 1;
      Do_Work;
   end loop;
end Remote_Processor;
