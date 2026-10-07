program Soal4;
uses crt;
var
  pilihan: integer;
  bil1, bil2, hasilReal: real;
  hasilInt, sisaMod: integer;
  ulang: char;
begin
  repeat
    clrscr;
    writeln('===KALKULATOR SEDERHANA===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD (Pembagian & Sisa Bagi)');
    writeln('========================================');
    write('Pilih menu operasi (1-5): ');
    readln(pilihan);
    if (pilihan >= 1) and (pilihan <= 5) then
    begin
      write('Masukkan Bilangan Pertama : ');
      readln(bil1);
      write('Masukkan Bilangan Kedua   : ');
      readln(bil2);
      writeln('----------------------------------------');
      case pilihan of
        1: writeln('Hasil Penjumlahan : ', (bil1 + bil2):0:2);
        2: writeln('Hasil Pengurangan : ', (bil1 - bil2):0:2);
        3: writeln('Hasil Perkalian   : ', (bil1 * bil2):0:2);
        4: begin
             if bil2 <> 0 then
               writeln('Hasil Pembagian   : ', (bil1 / bil2):0:2)
             else
               writeln('Error: Pembagian dengan nol tidak terdefinisi!');
           end;
        5: begin
             if trunc(bil2) <> 0 then
             begin
               hasilInt := trunc(bil1) div trunc(bil2);
               sisaMod  := trunc(bil1) mod trunc(bil2);
               writeln('Hasil DIV (Hasil Bagi) : ', hasilInt);
               writeln('Hasil MOD (Sisa Bagi)  : ', sisaMod);
             end
             else
               writeln('Error: Pembagian dengan nol tidak terdefinisi!');
           end;
      end;
    end
    else
    begin
      writeln('Pilihan menu tidak valid!');
    end;
    writeln('----------------------------------------');
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't');
  
  writeln('Terima kasih telah menggunakan kalkulator!');
  readln;
end.