program soal10;
uses crt;
var 
noHari: integer;
begin
    clrscr;
    writeln('===TAMPILAN NAMA HARI===');
    write('Masukan Angka Hari (1-7): '); readln(noHari);
    writeln;
    case noHari of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
    else
    writeln('Angka tidak valid! Masukan angka 1 sampai 7.');
    end;
    writeln('============================================');
    readln;
end.