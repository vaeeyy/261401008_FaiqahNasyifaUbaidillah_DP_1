program soal8;
uses crt;
var 
golongan: char;
jamKerja, jamLembur: integer;
gajiPokok, gajiLembur, bonus, totalGaji: longint;
begin
    clrscr;
    writeln('===HITUNG GAJI KARYAWAN===');
    write('Masukan Golongan Karyawan (A/B/C): '); readln(golongan);
    golongan := upcase(golongan);
    write('Masukan Total Jam Kerja per Minggu : '); readln(jamKerja);
    gajiPokok := 0;
    gajiLembur := 0;
    bonus := 0;
case golongan of
    'A': gajiPokok :=1500000;
    'B': gajiPokok :=2000000;
    'C': gajiPokok :=2500000;
else
writeln('Golongan tidak valid!');
end;
if jamKerja > 40 then
begin
    jamLembur := jamKerja - 40;
    gajiLembur := jamLembur * 20000;
end;
if (golongan = 'C') and (jamKerja > 50) then
begin
    bonus := 100000;
end;
totalGaji := gajiPokok + gajiLembur + bonus;
if gajiPokok > 0 then
begin
    writeln;
    writeln('===RINCIAN GAJI===');
    writeln('Gaji Pokok     : Rp', gajiPokok);
    writeln('Gaji Lembur    : Rp', gajiLembur);
    writeln('Bonus          : Rp', bonus);
    writeln('----------------------------------');
    writeln('Total Gaji     : Rp', totalGaji);
end;
writeln('--------------------------------------');
readln;
end.