uses crt;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
  i, batas: integer;
begin
  // TODO 1: Handle bilangan kurang dari 2
  if n < 2 then
  begin
    IsPrime := false;
    exit;
  end;

  // TODO 2: Handle bilangan 2
  if n = 2 then
  begin
    IsPrime := true;
    exit;
  end;

  // TODO 3: Handle bilangan genap
  if n mod 2 = 0 then
  begin
    IsPrime := false;
    exit;
  end;

  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  batas := trunc(sqrt(n)); // membuat batasan cek sampai akar kuadrat berapa
  for i := 3 to batas do
  begin
    if n mod i = 0 then
    begin
      IsPrime := false;
      exit;
    end;
  end;

  // TODO 5: Return true jika lolos semua pengecekan
  IsPrime := true;
end;

{ Program Utama }
var
  bil: integer;
begin
  clrscr;
  writeln('Program Pengecekan Bilangan Prima9');
  
  repeat
    writeln;
    write('Masukkan sebuah bilangan (0 untuk keluar): '); readln(bil);
    if bil = 0 then break;

    // Memanggil function IsPrime
    if IsPrime(bil) then
      writeln('Hasil: ', bil, ' adalah bilangan PRIMA.')
    else
      writeln('Hasil: ', bil, ' adalah bilangan NON-PRIMA.');
  until bil = 0;
end.

// penjelasan:
// Function IsPrime menerima satu parameter bilangan bulat n dan mengembalikan nilai boolean.
// Fungsi ini memeriksa apakah n adalah bilangan prima dengan beberapa langkah:
// 1. Menangani kasus bilangan kurang dari 2 (bukan prima).
// 2. Menangani kasus bilangan 2 (adalah prima).
// 3. Menangani bilangan genap lebih besar dari 2 (bukan prima).
// 4. Memeriksa faktor ganjil dari 3 hingga akar kuadrat n.
// 5. Jika tidak ditemukan faktor, mengembalikan true (adalah prima).
// pada program utama, pengguna diminta memasukkan bilangan, dan fungsi IsPrime dipanggil untuk menentukan apakah bilangan tersebut prima atau tidak. Hasilnya ditampilkan ke layar. Program berulang hingga pengguna memasukkan 0 untuk keluar.
// TODO pada kode menunjukkan bagian-bagian yang perlu diisi untuk menyelesaikan fungsi pengecekan bilangan prima
// pada program utama digunakan  repeat-until untuk mengulang input hingga pengguna memasukkan 0.
// pemanggilan function IsPrime digunakan dalam kondisi if untuk menampilkan hasil apakah bilangan tersebut prima atau tidak.