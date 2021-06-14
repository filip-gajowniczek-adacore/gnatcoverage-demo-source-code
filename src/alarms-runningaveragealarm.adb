package body Alarms.RunningAverageAlarm is

   ------------
   -- Update --
   ------------

   function Update
     (Object : in out Running_Average_Alarm_Type; Value : Integer)
      return Boolean
   is
   begin
      Add_Sample(Object.Averager, Value);
      Object.Monitor := Integer(Get_Average(Object.Averager));
      return Object.Monitor > Object.Threshold;
   end Update;

end Alarms.RunningAverageAlarm;
