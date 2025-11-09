uses crt;

var
  n, i: integer;
  nim: array[1..10] of string;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa (1-10): ');
  readln(n);

  writeln('Masukkan NIM mahasiswa dari depan ke belakang:');
  for i := 1 to n do
  begin
    write('NIM ke-', i, ': ');
    readln(nim[i]);
  end;

  writeln;
  writeln('Urutan NIM dari belakang ke depan:');
  for i := n downto 1 do
  begin
    write(nim[i], ' ');
  end;

  writeln;
  readln;
end.
