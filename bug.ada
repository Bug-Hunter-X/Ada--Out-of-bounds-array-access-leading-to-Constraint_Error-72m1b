```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index := 11; --Error: Index out of range for Arr
begin
   Arr(Index) := 12; 
   --other statements
exception
   when others =>
      Put_Line("An error occurred");
end Example;
```