program Soal7;
uses crt;
var
  kode: char;
  lamaParkir: integer;
  tarifTotal: longint;
begin
  clrscr;
  writeln('===HITUNG TARIF PARKIR===');
  writeln('Kode Kendaraan:');
  writeln('M : Mobil');
  writeln('K : Motor');
  writeln('B : Bus');  
  write('Masukkan Kode Kendaraan (M/K/B): ');
  readln(kode);
  kode := upcase(kode); { Konversi ke huruf kapital }
  write('Masukkan Lama Parkir (jam)    : ');
  readln(lamaParkir);
  tarifTotal := 0;
  case kode of
    'M': begin
           if lamaParkir > 10 then
             tarifTotal := 30000
           else if lamaParkir > 1 then
             tarifTotal := 5000 + (lamaParkir - 1) * 3000
           else if lamaParkir = 1 then
             tarifTotal := 5000;
         end;
    'K': begin
           if lamaParkir > 10 then
             tarifTotal := 10000
           else if lamaParkir > 1 then
             tarifTotal := 2000 + (lamaParkir - 1) * 1000
           else if lamaParkir = 1 then
             tarifTotal := 2000;
         end;
    'B': begin
           if lamaParkir > 10 then
             tarifTotal := 50000
           else if lamaParkir > 1 then
             tarifTotal := 10000 + (lamaParkir - 1) * 5000
           else if lamaParkir = 1 then
             tarifTotal := 10000;
         end;
  else
    writeln('Kode kendaraan tidak valid!');
  end;
  if tarifTotal > 0 then
  begin
    writeln('----------------------------------------');
    writeln('Total Tarif Parkir : Rp', tarifTotal);
  end;
  writeln('========================================');
  readln;
end.