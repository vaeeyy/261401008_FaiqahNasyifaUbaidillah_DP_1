program soal1;
uses crt;
var  
N, i: integer;
harga,total, diskon, persentaseDiskon,totalBayar: real;
begin
    clrscr;
    writeln('===Program Hitung Total Belanja===');
    
    write('masukan jumalah barang yang dibeli (N): '); readln(N);
    total := 0;
    writeln;
    for i := 1 to N do 
    begin 
    write('masukan harga barang ke-', i, ': Rp'); readln(harga);
    total := total + harga;
    end;
    if total >= 500000 then 
    begin
        persentaseDiskon := 20;
        end
        else if total >= 100000 then
        begin 
        persentaseDiskon := 10;
    end
    else
    begin
        persentaseDiskon := 0;
    end;

    diskon := (persentaseDiskon / 100) * total;
    totalBayar := total - diskon;

    writeln('===Rincian Belanja===');
    writeln('Total Sebelum Diskon : Rp', total:10:2);
    writeln('Besar Diskon (', persentaseDiskon:2:0, '%)  : Rp', diskon:10:2);
    writeln('Total Bayar Akhir : Rp', totalBayar:10:2);
    readln;
    end.
