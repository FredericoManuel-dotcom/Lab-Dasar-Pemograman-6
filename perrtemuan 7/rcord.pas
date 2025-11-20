uses crt;

{--------------------------------------------}
{ 1️⃣ TYPE DEFINITION                          }
{--------------------------------------------}
type
    TAlamat = record
        jalan   : string[50];
        kota    : string[50];
        kode_pos : integer;
    end;

    TMahasiswa = record
        nama    : string[50];
        umur    : integer;
        ipk     : real;
        alamat  : TAlamat;  //nested record 
    end;


{--------------------------------------------}
{ 2️⃣ VARIABLE DECLARATION                     }
{--------------------------------------------}
 var
    mhs : TMahasiswa;                     
    mhs1, mhs2 : TMahasiswa;             
    dataMhs : array[1..100] of TMahasiswa; 
    n, i : integer;


{============================================================}
{                    SECTION 1                               }
{      IMPLEMENTASI SIMPLE RECORD + NESTED RECORD            }
{============================================================}
 begin
  clrscr;

//   { INPUT DATA }
//   write('Nama  : '); readln(mhs.nama);
//   write('Umur  : '); readln(mhs.umur);
//   write('IPK   : '); readln(mhs.ipk);

//   writeln('--- Alamat ---');
//   write('Jalan     : '); readln(mhs.alamat.jalan);
//   write('Kota      : '); readln(mhs.alamat.kota);
//   write('Kode Pos  : '); readln(mhs.alamat.kodepos);

//   { OUTPUT }
//   writeln;
//   writeln('=== OUTPUT SECTION 1 ===');
//   writeln('Nama        : ', mhs.nama);
//   writeln('Umur        : ', mhs.umur);
//   writeln('IPK         : ', mhs.ipk:0:2);
//   writeln('Alamat      : ', mhs.alamat.jalan,
//           ', ', mhs.alamat.kota,
//           ', ', mhs.alamat.kodepos);


{============================================================}
{                    SECTION 2                               }
{       IMPLEMENTASI RECORD + WITH ... DO                    }
{============================================================}
//  (output )
//  with mhs do
//     begin
//         writeln('Nama        : ', nama);
//         writeln('Umur        : ', umur);
//         writeln('IPK         : ', ipk:0:2);
//         with alamat do
//     end;
// wwith alamat do
//         begin
//             writeln('Alamat      : ', jalan, ', ', kota, ', ', kodepos);
//         end;

  
  { Input menggunakan WITH }
 

{============================================================}
{                    SECTION 3                               }
{                ARRAY OF RECORD                             }
{============================================================}

write('Masukkan jumlah mahasiswa: '); readln(n);

for i := 1 to n do
begin
    writeln('--- Mahasiswa ke-', i);
    write('Nama  : '); readln(dataMhs[i].nama);
    write('Umur  : '); readln(dataMhs[i].umur);
    write('IPK   : '); readln(dataMhs[i].ipk);

    writeln('--- Alamat ---');
    write('Jalan     : '); readln(dataMhs[i].alamat.jalan);
    write('Kota      : '); readln(dataMhs[i].alamat.kota);
    write('Kode Pos  : '); readln(dataMhs[i].alamat.kode_pos);

    writeln;
    writeln('Daftar mahsiswa');
end;

for i := 1 to n do
begin
   writeln('Mahasiswa ke-', i);

    with dataMhs[i] do
    begin
        writeln('Nama : ', nama);
        writeln('Umur : ', umur);
        writeln('IPK  : ', ipk:0:2);
        end;

        with dataMhs[i].alamat do
        begin
            write('jalan :', jalan );
            write(', Kota :', kota );
            writeln(', Kode Pos :', kode_pos);
    end;
end;
end.
   
 



end.
