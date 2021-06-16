pragma Ada_2012;
package body RunningAverage is

   ----------------
   -- Add_Sample --
   ----------------

   procedure Add_Sample (Object : in out Averager_Type; Sample : T) is
   begin
      Object.Accumulation := Object.Accumulation + Sample;
      Object.Sample_Count := Object.Sample_Count + 1;
   end Add_Sample;

   -----------------
   -- Get_Average --
   -----------------

   function Get_Average (Object : in Averager_Type) return Float is
   begin
      return Float(Object.Accumulation)/Float(Object.Sample_Count);
   end Get_Average;

end RunningAverage;
