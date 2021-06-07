with Ada.Text_IO; use Ada.Text_IO;

package body Worker is

   State : Integer := 0;
   
   procedure Work1 is 
   begin 
      State := State + 1;
   end Work1;
   
   procedure Work2 is 
   begin
      State := State/2;
      
   end Work2;
   
   procedure Reset_State is 
   begin
      State := 0;
   end Reset_State;

   function Get_State return Integer is 
   begin
      return State;
   end Get_State;
   
end Worker;
