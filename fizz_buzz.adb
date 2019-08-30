with Ada.Text_IO; use Ada.Text_IO;

procedure Fizz_Buzz is
   type Numbers is range 1 .. 100;
begin
   for Count in Numbers loop
      declare
         Remainder_Of_Three : constant Boolean := Count rem 3 = 0;
         Remainder_Of_Five  : constant Boolean := Count rem 5 = 0;
      begin
         -- Put (Numbers'Image (Count));

         if Remainder_Of_Three and Remainder_Of_Five then
            Put_Line (" - Fizz Buzz");
         elsif Remainder_Of_Three then
            Put_Line (" - Fizz");
         elsif Remainder_Of_Five then
            Put_Line (" - Buzz");
         -- else
         --    New_Line;
         end if;
      end;
   end loop;
end Fizz_Buzz;
