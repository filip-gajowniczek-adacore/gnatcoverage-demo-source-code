with Input; use Input;
with Alarms.RunningAverageAlarm; use Alarms.RunningAverageAlarm;
with Ada.Text_IO; use Ada.Text_IO;

with Ada.Real_Time; use Ada.Real_Time;

package body ProtocolHandler is

   subtype Digit_Type is Character range '0' .. '9';
   
   Alarm : Running_Average_Alarm_Type(5);
   
   function Run return Boolean is
      C1 : String(1..1);
      C2 : String(1..1);
      Read1_Flag : Boolean;
      Read2_Flag : Boolean;
      Alarm_Activated : Boolean;
   begin 
      
      Get_Input (Seconds(5), C1(1));
      Get_Input (Seconds(5), C2(1));
      
      if C1(1) in '0' .. '9' and then C2(2) in '1' .. '9' then
         Alarm_Activated := Alarm.Update (Integer'Value(C1));
         Alarm_Activated := Alarm.Update(Integer'Value(C2));
      end if;

      if C2(1) = '0' then
         if C1(1) = '1' then 
            Alarm_Activated := Alarm.Update (10);
         end if;
      elsif C1(1) in '0' .. '9' then 
         Alarm_Activated := Alarm.Update (Integer'Value(C1));
      end if;
            
      Put_Line ("New monitor value: " & Alarm.Get_Monitor'Image);
      
      if Alarm_Activated then
         Put_line("Alarm activated!");
      end if;
      
      return True;
      
   exception
         when others => return False;
   end Run;

end ProtocolHandler;
