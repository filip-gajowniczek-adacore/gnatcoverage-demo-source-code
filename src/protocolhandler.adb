with Input; use Input;
with Alarms.RunningAverageAlarm; use Alarms.RunningAverageAlarm;
with Math; use Math;

with Ada.Text_IO; use Ada.Text_IO;

with Ada.Real_Time; use Ada.Real_Time;

package body ProtocolHandler is

   subtype Digit_Type is Character range '0' .. '9';
   
   Alarm : Running_Average_Alarm_Type(5);
   Accumulation : Integer := 0;
   
   function Run return Boolean is
      C1 : String(1..1);
      C2 : String(1..1);
      Alarm_Activated : Boolean;
   begin 
      
      Get_Input (Seconds(5), C1(1));
      Get_Input (Seconds(5), C2(1));
      
      if C1(1) in '0' .. '9' and then C2(1) in '1' .. '9' then
         Alarm_Activated := Alarm.Update (Integer'Value(C1));
         Alarm_Activated := Alarm.Update(Integer'Value(C2));
      end if;

      if C2(1) = '0' then
         if C1(1) = '1' then 
            Alarm_Activated := Alarm.Update (10);
         elsif C1(1) in '0' .. '9' then 
            Alarm_Activated := Alarm.Update (Integer'Value(C1));
         end if;
      end if;
            
      Put_Line ("New monitor value: " & Alarm.Get_Monitor'Image);
      
      if Alarm_Activated then
         Put_line("Alarm activated!");
      end if;
      
      return True;
      
   exception
      when Input.Timeout_Exception => return False;
      when others => 
         Put_Line("Unknown Exception");
         return False;
   end Run;

   function Get_Accumulation return Integer is 
   begin
      return Accumulation;
   end Get_Accumulation;
   
end ProtocolHandler;
