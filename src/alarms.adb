pragma Ada_2012;
package body Alarms is

   function Is_Alarming (Object : Alarm_Type) return Boolean is
   begin
      return Object.Monitor > Object.Threshold;
   end Is_Alarming;

   -----------------
   -- Get_Monitor --
   -----------------

   function Get_Monitor (Object : in out Alarm_Type) return Integer is
   begin
      return Object.Monitor;
   end Get_Monitor;

end Alarms;
