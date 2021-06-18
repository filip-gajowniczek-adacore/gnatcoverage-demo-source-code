with Input; use Input;
with Alarms.RunningAverageAlarm; use Alarms.RunningAverageAlarm;
with Math; use Math;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_time; use Ada.Real_Time;

package body ProtocolHandler is
   
   Alarm : Running_Average_Alarm_Type(5);
   Accumulation : Integer := 0;
   
   
   type Digit_Type is mod 2;
   Digit : Digit_Type;
   
   subtype Single_Char_String is String(1..1);
   Previous_C : Single_Char_String;
   
   procedure Process( C : Single_Char_String ) is
      Alarm_Activated : Boolean := False;
   begin
      
      if Digit = 0 and then C(1) /= '1' then
         if C(1) in '0' .. '9' then
            Alarm_Activated := Alarm.Update(Integer'Value(C));
         end if;
      elsif Digit = 1 and then Previous_C(1) = '1' then
         Alarm_Activated := Alarm.Update(10);
      end if;
      
      Digit := Digit_Type'Succ(Digit);
      Previous_C := C;
      
      if Alarm_Activated then
         Put_line("Alarm activated!");
      end if;
   end Process;
   
   function Run return Boolean is      
      Return_Value : Boolean := True;
      C1 : Single_Char_String := " ";
      C2 : Single_Char_String := " ";
   begin 
      declare
      begin
         Get_Input ( Seconds(3), C1(1));
         Get_Input ( Seconds(0), C2(1));
      exception
         when others => Return_Value := False;
      end;
      
      Process(C1);
      Process(C2);
      
      return Return_Value;

   end Run;

   function Get_Accumulation return Integer is 
   begin
      return Accumulation;
   end Get_Accumulation;
   
end ProtocolHandler;
