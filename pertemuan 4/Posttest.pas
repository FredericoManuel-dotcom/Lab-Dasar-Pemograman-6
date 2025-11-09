{
NIM_1:123
NIM_2:144
}

uses crt;

var
  pilihan, jumlah: integer;
  harga, subtotal, total: longint;
  lagi: char;
  namaMenu: string;

begin
  clrscr;
  total := 0;

  writeln('=== KASIR RESTORAN IKLC ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Nasi Goreng - Rp15000');
    writeln('2. Mie Goreng  - Rp12000');
    writeln('3. Es Teh      - Rp5000');
    writeln;

    write('Pilih menu (1-3): '); readln(pilihan);

    case pilihan of
      1: begin
           namaMenu := 'Nasi Goreng';
           harga := 15000;
         end;
      2: begin
           namaMenu := 'Mie Goreng';
           harga := 12000;
         end;
      3: begin
           namaMenu := 'Es Teh';
           harga := 5000;
         end;
    else
      writeln('Pilihan tidak valid!');
      harga := 0;
      namaMenu := '';
    end;

    if (harga <> 0) then
    begin
      write('Masukkan jumlah pesanan ', namaMenu, ': '); readln(jumlah);
      subtotal := harga * jumlah;
      total := total + subtotal;
      writeln('Pesanan berhasil ditambahkan. Subtotal: Rp', subtotal);
    end;

    writeln;
    write('Tambah pesanan lagi? (Y/N): '); readln(lagi);
    writeln;
  until (upcase(lagi) <> 'Y');

  writeln('===========================');
  writeln('Total Keseluruhan: Rp', total);
  writeln('Terima kasih telah berbelanja!');
  writeln('===========================');
  readln;
end.
