package Alarms is
   
   type Alarm_Type(Threshold : Integer) is abstract tagged private;
   
   function Get_Monitor (Object : in out Alarm_Type) return Integer;
   
   procedure Reset (Object : in out Alarm_Type) is abstract with 
     Post'Class => 
       ( Object.Get_Monitor < Object.Threshold );
   
   function Is_Alarming (Object : Alarm_Type) return Boolean;
   
   function Update (Object : in out Alarm_Type; Value : Integer)
                    return Boolean is abstract with
     Post'Class => 
       ( if Object.Get_Monitor >= Object.Threshold then Update'Result = True );
   
   
private
   
   type Alarm_Type(Threshold : Integer) is abstract tagged record
      Monitor : Integer;
   end record;
   
end Alarms;
