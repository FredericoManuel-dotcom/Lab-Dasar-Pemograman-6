uses crt;

 var 
  nilai : integer;
begin
    clrscr;

    write('masukkan nilai : '); readln(nilai);
    //  if (nilai <= 65) then
    //    writeln('Anda tidak lulus');

    // write('masukkan nilai : '); readln(nilai);
    //  if (nilai <= 65) then
    //  begin
    //    writeln('Anda tidak lulus');
    //    end
    // else
    //  begin
    //   writeln('Anda lulus!');
    //  end; 
//  statement tiga

// if (nilai = 100) then
//  begin
//   writeln('perfect')
//  end
// else 
// if (nilai <= 65) then
//  begin
//   writeln('Anda tidak lulus!')
//  end
// else
//  begin
//   writeln('Anda lulus!')
//  end;

if (nilai <= 65) then
 begin
  writeln('Anda tidak lulus!');
 end
else
 begin
if (nilai = 100) then
 begin 
  writeln('Anda lulus dan hebat!');
 end
else
 begin
  writeln('Anda lulus!');
 end
end;
begin 

        // statement case of
        case nilai of 
            1: writeln('Senin');
            1: writeln('Selasa');
            1: writeln('Rabu');
            1: writeln('Kamis');
            1: writeln('Jumat');
            1: writeln('Sabtu');
            1: writeln('Minggu');
        else 
            writeln('Inputan tidak valid')
        end;
end.