package body Alarms.RunningAverageAlarm is

   procedure Reset (Object : in out Running_Average_Alarm_Type) is
   begin
      Object.Monitor := 0;
   end Reset;

   ------------
   -- Update --
   ------------

   function Update
     (Object : in out Running_Average_Alarm_Type; Value : Integer)
      return Boolean
   is
   begin
      Add_Sample(Object.Averager, Value);
      return Integer(Get_Average(Object.Averager)) > Object.Threshold;
   end Update;

end Alarms.RunningAverageAlarm;
