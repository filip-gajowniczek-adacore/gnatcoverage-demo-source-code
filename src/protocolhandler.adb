with Input; use Input;
with Alarms.RunningAverageAlarm; use Alarms.RunningAverageAlarm;
with Ada.Text_IO; use Ada.Text_IO;

with Ada.Real_Time; use Ada.Real_Time;

package body ProtocolHandler is

   subtype Digit_Type is Character range '0' .. '9';
   
   Alarm : Running_Average_Alarm_Type(5);
   
   procedure Run is
      Input : String(1..1);
      Alarm_Activated : Boolean;
   begin 
      -- Check if the first character is newline
      if Get_Input( Seconds(10), Input(1) ) and then 
        Input(1) in Digit_Type then
         if Input(1) = '1' then
            -- Read the next character
            if Get_Input( Seconds(0), Input(1)) and then
              Input(1) = '0' then
               -- This is a 10
               Alarm_Activated := Alarm.Update(10);
            elsif Input(1) in '1' .. '9' then
               -- This is a 1 plus non-zero digit
               Alarm_Activated := Alarm.Update (1);
               Alarm_Activated := Alarm.Update (Integer'Value(Input));
            end if;
         else 
            Alarm_Activated := Alarm.Update (Integer'Value(Input));
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
