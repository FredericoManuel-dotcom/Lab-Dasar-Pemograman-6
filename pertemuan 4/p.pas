uses crt;

var
  tingkat, rahasia, tebak, i, batas, skor: integer;

begin
  clrscr;
  writeln('=== PERMAINAN TEBAK ANGKA ===');
  writeln('Pilih tingkat kesulitan:');
  writeln('1. Mudah (1 - 10)');
  writeln('2. Sedang (1 - 50)');
  writeln('3. Sulit (1 - 100)');
  write('Masukkan pilihan (1-3): ');
  readln(tingkat);

  case tingkat of
    1: batas := 10;
    2: batas := 50;
    3: batas := 100;
  else
    begin
      writeln('Pilihan tidak valid! Program dihentikan.');
      halt;
    end;
  end;

  writeln;
  writeln('--- Pemain 1 ---');
  write('Masukkan angka rahasia (1 - ', batas, '): ');
  readln(rahasia);

  if (rahasia < 1) or (rahasia > batas) then
  begin
    writeln('Angka di luar batas! Program dihentikan.');
    halt;
  end;

  clrscr; // Hapus layar agar pemain 2 tidak melihat angka rahasia
  writeln('--- Pemain 2 ---');
  writeln('Kamu punya 5 kesempatan untuk menebak angka 1 - ', batas, '.');
  writeln;

  skor := 0;

  for i := 1 to 5 do
  begin
    write('Tebakan ke-', i, ': ');
    readln(tebak);

    if (tebak < 1) or (tebak > batas) then
    begin
      writeln('Tebakan di luar batas! Coba lagi.');
      continue;
    end;

    if tebak < rahasia then
      writeln('Terlalu kecil!')
    else if tebak > rahasia then
      writeln('Terlalu besar!')
    else
    begin
      case i of
        1: skor := 100;
        2: skor := 80;
        3: skor := 60;
        4: skor := 40;
        5: skor := 20;
      end;
      writeln('Benar! Skor kamu: ', skor);
      break;
    end;
    writeln;
  end;

  if skor = 0 then
  begin
    writeln;
    writeln('Kesempatan habis!');
    writeln('Jawabannya adalah ', rahasia, '.');
  end;

  writeln;
  writeln('Terima kasih telah bermain!');
  readln;
end.
