program soal3;
uses crt;
var 
N, kategori, i: integer;
begin
    clrscr;
    writeln('===Program Deret Angka Tersaring===');
    write('Masukan Nilai N: '); readln(N);
    writeln('Pilih Kategori Deret: ');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan Anda (1/2): '); readln(kategori);
    writeln;
    write('Hasil Deret Angka: ');
    i := 0;
    while i < N do 
    begin
        i := i + 1;
        if (kategori = 1) and (i mod 2=0) then
        continue;
        if (kategori = 2) and (i mod 2 <> 0 ) then
        continue;
        if i mod 5 = 0 then
        continue;
        write(i, ' ');
    end;
    writeln('======================='); readln;
end.