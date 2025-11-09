program NilaiMahasiswa;
uses crt;

var
  n, i: integer;
  tugas, kuis, uts, uas: array[1..5] of real;
  rata: array[1..5] of real;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);

  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i, ':');
    write('  Nilai Tugas : '); readln(tugas[i]);
    write('  Nilai Kuis  : '); readln(kuis[i]);
    write('  Nilai UTS   : '); readln(uts[i]);
    write('  Nilai UAS   : '); readln(uas[i]);

    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    writeln;
  end;

  writeln('No | Tugas | Kuis | UTS | UAS | Rata-rata | Keterangan');

  for i := 1 to n do
  begin
    write(i:2, ' | ', tugas[i]:5:1, ' | ', kuis[i]:4:1, ' | ', uts[i]:3:1, ' | ', uas[i]:3:1, ' | ', rata[i]:9:2, ' | ');
    if rata[i] >= 70 then
      writeln('LULUS')
    else
      writeln('TIDAK LULUS');
  end;

  readln;
end.
