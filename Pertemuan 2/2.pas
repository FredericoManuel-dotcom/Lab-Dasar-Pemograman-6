program Lapangan;
uses crt;
var
   panjang, lebar, luas, keliling: integer;
begin
   clrscr;
   write('Masukkan panjang (meter): '); readln(panjang);
   write('Masukkan lebar (meter): '); readln(lebar);

   luas := panjang * lebar;
   keliling := 2 * (panjang + lebar);

   writeln('Luas lapangan : ', luas, ' meter');
   writeln('Keliling lapangan : ', keliling, ' meter');
   readln;
end.
