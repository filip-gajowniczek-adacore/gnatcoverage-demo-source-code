with Input; use Input;
with Alarms.RunningAverageAlarm; use Alarms.RunningAverageAlarm;
with Ada.Text_IO; use Ada.Text_IO;

with Ada.Real_Time; use Ada.Real_Time;

package body ProtocolHandler is

   subtype Digit_Type is Character range '0' .. '9';
   
   Alarm : Running_Average_Alarm_Type(5);
   
   procedure Run is
      C1 : String(1..1);
      C2 : String(1..1);
      Read1_Flag : Boolean;
      Read2_Flag : Boolean;
      Alarm_Activated : Boolean;
   begin 
      
      Read1_Flag := Get_Input (Seconds(5), C1(1));
      Read2_Flag := Get_Input (Seconds(5), C2(1));
      
      if Read1_Flag and then Read2_Flag then
         if C1(1) = '1' then 
            if C2(1) = '0' then 
               Alarm_Activated := Alarm.Update(10);
            elsif C2(1) in '1' .. '9' then
               Alarm_Activated := Alarm.Update(1);
               Alarm_Activated := Alarm.Update (Integer'Value(C2));
            end if;
         elsif C1(1) in '0' .. '9' then
            Alarm_Activated := Alarm.Update (Integer'Value(C1));
         end if;
      end if;
      
      Put_Line ("Monitor value: " & Alarm.Get_Monitor'Image);
      
      if Alarm_Activated then
         Put_line("Alarm activated!");
      end if;
      
   exception
         when others => null;
   end Run;

end ProtocolHandler;
