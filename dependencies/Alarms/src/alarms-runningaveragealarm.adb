package body Alarms.RunningAverageAlarm is

   procedure Reset (Object : in out Running_Average_Alarm_Type) is
   begin
      null;
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
      return Object.Is_Alarming;
   end Update;

   function Is_Alarming (Object : Running_Average_Alarm_Type)
                         return Boolean is
   begin
      return Integer(Get_Average(Object.Averager)) >= Object.Threshold;
   end;

end Alarms.RunningAverageAlarm;
