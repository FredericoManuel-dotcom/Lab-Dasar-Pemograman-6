uses crt;

{---------------------------------------------------------}
{ 4️⃣ Procedure dengan Parameter (Masukan)                }
{---------------------------------------------------------}
procedure CetakLuasPersegiPanjang(panjang, lebar: integer);
var
  luas: real;
begin
  luas := panjang * lebar;
  writeln('Hasil (Procedure)  -> Luas persegi panjang = ', luas:0:2);
end;

{---------------------------------------------------------}
{ 5️⃣ Function dengan Parameter Masukan                  }
{---------------------------------------------------------}
function HitungLuasPersegiPanjang(panjang, lebar: integer): real;
begin
  HitungLuasPersegiPanjang := panjang * lebar;
end;

{---------------------------------------------------------}
{                  PROGRAM UTAMA                         }
{---------------------------------------------------------}
var
  panjang, lebar: integer;
  hasil: real;
begin
  clrscr;
  writeln('=== PERBANDINGAN PROCEDURE DAN FUNCTION ===');
  writeln;
  write('Masukkan panjang persegi panjang : '); readln(panjang);
  write('Masukkan lebar persegi panjang   : '); readln(lebar);
  writeln;

  { Memanggil procedure (tidak mengembalikan nilai) }
  CetakLuasPersegiPanjang(panjang, lebar);

  { Memanggil function (mengembalikan nilai) }
  hasil := HitungLuasPersegiPanjang(panjang, lebar);
  writeln('Hasil (Function)   -> Luas persegi panjang = ', hasil:0:2);
  
  writeln;
  writeln('Catatan: Procedure hanya menampilkan hasil.');
  writeln('         Function bisa digunakan untuk proses lanjut.');
  readln;
end.

// penjelasan:
// pada bagian procedure cetakluaspersegipanjang procedure adalah blok program yang tidak mengembalikan nilai. Parameter panjang dan lebar diterima sebagai input. Variabel luas digunakan untuk menyimpan hasil perkalian.
// pada bagian funcition, function adalah blok program yang mengembalikan nilai.Nilai melalui nama function:HitungLuasPersegiPanjang := panjang * lebar
// pada program utama, procedure dipanggil langsung tanpa menyimpan hasilnya, sedangkan function dipanggil dan hasilnya disimpan dalam variabel hasil untuk digunakan lebih lanjut.
// perbedaan utama antara procedure dan function adalah bahwa procedure tidak mengembalikan nilai, sedangkan function mengembalikan nilai yang dapat digunakan dalam ekspresi atau disimpan dalam variabel.