program soal9;
uses crt;
var 
tahun, bulan, jumlahHari: integer;
isKabisat: boolean;
begin
    clrscr;
    writeln('===CEK JUMLAH HARI BULAN===');
    write('Masukan Tahun        : '); readln(tahun);
    write('Masukan Bulan (1-12) : '); readln(bulan);
    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then 
    isKabisat := true
    else
    iskabisat := false;
    case bulan of
    1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
    4, 6, 9, 11: jumlahHari := 30;
    2: begin
        if isKabisat then
        jumlahHari := 29
        else 
        jumlahHari := 28;
    end;
else
jumlahHari := 0;
end;
writeln('---------------------------------------');
if jumlahHari <> 0 then
begin
    writeln('Jumlah Hari Pada Bulan ', bulan, ' Tahun ', tahun, ' adalah: ', jumlahHari, ' Hari');
    if (bulan = 2) and isKabisat then
    writeln('(Tahun ', tahun, ' adalah Tahun Kabisat)');
  end
  else
  begin
    writeln('Nomor bulan tidak valid! Masukkan angka 1 - 12.');
  end;
  writeln('========================================');
  readln;
end.