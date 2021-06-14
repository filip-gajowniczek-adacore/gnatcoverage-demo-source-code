pragma Ada_2012;
package body Alarms is

   -----------------
   -- Get_Monitor --
   -----------------

   function Get_Monitor (Object : in out Alarm_Type) return Integer is
   begin
      return Object.Monitor;
   end Get_Monitor;

end Alarm;
