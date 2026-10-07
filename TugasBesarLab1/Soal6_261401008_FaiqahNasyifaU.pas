program soal6;
uses crt;
var 
nilaiTugas, nilaiUTS, nilaiUAS, nilaiAkhir, kehadiran: real;
statusLulus: string;
indeks: char;
begin
    clrscr;
    writeln('===PENENTUAN NILAI AKHIR MATKUL===');
    write('masukan nilai tugas (0-100) : '); readln(nilaiTugas);
    write('masukan nilai UTS (0-100) : '); readln(nilaiUTS);
    write('masukan nilai UAS (0-100) : '); readln(nilaiUAS);
    write('masukan kehadiran (%) : '); readln(kehadiran);
    nilaiAkhir := (0.30 * nilaiTugas) + (0.30 * nilaiUTS) + (0.40 * nilaiUAS);
    if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    statusLulus := 'LULUS'
    else
    statusLulus := 'TIDAK LULUS';
    if nilaiAkhir >= 85 then
    indeks := 'A'
    else if nilaiAkhir >= 75 then
    indeks := 'B'
    else if nilaiAkhir >= 60 then
    indeks := 'C'
    else if nilaiAkhir >= 50 then
    indeks := 'D'
    else
    indeks := 'E';
    writeln;
    writeln('HASIL PENILAIAN: ');
    writeln('Nilai Akhir    : ', nilaiAkhir:0:2);
    writeln('Indeks Huruf   : ', indeks);
    writeln('status         : ', statusLulus);
    readln;
end.