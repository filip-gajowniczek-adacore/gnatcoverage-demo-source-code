with Ada.Real_Time; use Ada.Real_Time;

package body hardware is

   ---------------
   -- Get_State --
   ---------------

   function Get_State return State_Type is
   begin
      delay until Clock + Seconds(1);
      return State;
   end Get_State;

   -------------
   -- Action1 --
   -------------

   procedure Action1 is
   begin
      State.X := State.X + 4;
   end Action1;

   -------------
   -- Action2 --
   -------------

   procedure Action2 is
   begin
      State.X := State.X - 2;
      State.Y := State.Y + 1;
   end Action2;

   -------------
   -- Action3 --
   -------------

   procedure Action3 is
      Temp : Uint16 := State.X;
   begin
      State.X := State.Y;
      State.Y := Temp;
   end Action3;

   procedure Action4 is
   begin
      State.X := State.X + 2;
      State.Y := State.Y + 2;
   end;

end hardware;
