pragma Profile(Ravenscar);

with Ada.Text_IO; use Ada.Text_IO;
with ProtocolHandler; use ProtocolHandler;
with Input; use Input;


procedure Remote_Processor is

begin
   Put_Line ("Remote Processor Running");

   while Run loop
      null;
   end loop;

   Stop;

   Put_Line ("Remote Processor Terminating");

exception
      when others => null;
end Remote_Processor;
