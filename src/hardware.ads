package hardware is

   type uint16 is mod 65535;
   
   type State_Type is record
      X : uint16 := 0;
      Y : uint16 := 42;
   end record;
      
   function Get_State return State_Type;
   
   procedure Action1;
   
   procedure Action2;
   
   procedure Action3;
   
   procedure Action4;
   
private 

   State : State_Type;
      
end hardware;
