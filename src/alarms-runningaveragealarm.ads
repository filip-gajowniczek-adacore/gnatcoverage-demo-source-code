with Alarms; use Alarms;
with RunningAverage;

package Alarms.RunningAverageAlarm is

   type Running_Average_Alarm_Type is new Alarm_Type with private;
   
   function Update (Object : in out Running_Average_Alarm_Type;
                    Value : Integer) return Boolean;
   
private
   
   package Integer_Running_Average is new RunningAverage( T => Integer );
   use Integer_Running_Average;
   
   type Running_Average_Alarm_Type is new Alarm_Type with record
      Averager : Averager_Type;
   end record;
   
end Alarms.RunningAverageAlarm;
