generic
   type T is range <>;
package RunningAverage is
   
   type Averager_Type is private;
 
   procedure Add_Sample (Object : in out Averager_Type; Sample : T);
   function Get_Average (Object : in Averager_Type) return Float;
   
private
   
   type Averager_Type is record
      Accumulation : T;
      Sample_Count : Integer;
   end record;
   
end RunningAverage;
