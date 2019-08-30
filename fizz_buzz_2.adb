with Ada.Text_IO; use Ada.Text_IO;

procedure Fizz_Buzz_2 is
   Fizz      : aliased constant String := "Fizz";
   Buzz      : aliased constant String := "Buzz";
   Fizz_Buzz : aliased constant String := Fizz & Buzz;

   type String_Access is access String;

   subtype Threes is boolean;
   subtype Fives  is boolean;

   type String_Tables is array (Threes, Fives) of String_Access;

   --    5 F T
   --  3 |----
   --  F | n b
   --  T | f x
   String_Table : constant String_Tables := (
      (null,                     Buzz'Unrestricted_Access),
      (Fizz'Unrestricted_Access, Fizz_Buzz'Unrestricted_Access)
   );
begin
   for Count in 1 .. 100 loop
      declare
         Remainder_Of_Three : constant Boolean       := Count rem 3 = 0;
         Remainder_Of_Five  : constant Boolean       := Count rem 5 = 0;
         Text               : constant String_Access := String_Table (Remainder_Of_Three, Remainder_Of_Five);
      begin
         -- Put (Integer'Image (Count));

         if Text /= null then
            Put_Line (Text.all);
         -- else
         --    New_Line;
         end if;
      end;
   end loop;
end Fizz_Buzz_2;
