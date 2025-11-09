uses crt;
label a, b, c, d, e;

begin
clrscr;
    a:writeln('Hello world'); //1
    goto b;
    d:writeln('Fasilkom-TI'); //4
    goto e;
    c:writeln('Ilmu Komputer'); //3
    goto d;
    b:writeln('IKLC'); //2
    goto c;
    e:
end.