uses crt;
var
   nilai: integer;
begin
   clrscr;
   write('Masukkan nilai ujian (0-100): ');
   readln(nilai);

   if (nilai < 0) or (nilai > 100) then
      writeln('Nilai tidak valid')
   else if (nilai >= 85) and (nilai <= 100) then
      writeln('Nilai = A')
   else if (nilai >= 70) and (nilai <= 84) then
      writeln('Nilai = B')
   else if (nilai >= 60) and (nilai <= 69) then
      writeln('Nilai = C')
   else if (nilai >= 50) and (nilai <= 59) then
      writeln('Nilai = D')
   else
      writeln('Nilai = E');

   readln;
end.
