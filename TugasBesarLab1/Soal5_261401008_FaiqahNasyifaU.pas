program soal5;
uses crt;
var 
M, N, i, j: integer;
nilai, totalNilai, rataRata: real;
jumlahLulus, jumlahTidakLulus: integer;
status: string;
begin
    clrscr;
    writeln('===REKAPITULASI NILAI MAHASISWA===');
    write('Masukan jumlah mahasiswa (M): '); readln(M);
    write('Masukan jumlah tugas (N): '); readln(N);
    jumlahLulus := 0;
    jumlahTidakLulus := 0;
    for i := 1 to M do 
    begin
        writeln;
        writeln('--- Data Mahasiswa ke-', i, '---');
        totalNilai := 0;
        for j := 1 to N do 
        begin
            write(' Masukan Nilai Tugas Ke-', j, ': '); readln (nilai);
            totalNilai := totalNilai + nilai;
        end;
        rataRata := totalNilai / N;
        if rataRata >= 65 then
        begin
            status := 'lULUS';
            jumlahLulus := jumlahLulus + 1;
        end
        else
        begin
            status := 'TIDAK LULUS';
            jumlahTidakLulus := jumlahTidakLulus + 1;
        end;
        writeln(' Rata-rata Nilai : ', rataRata:0:2);
        writeln(' Status : ', status);
    end;
    writeln('===RINGKASAN HASIL===');
    writeln('Total Mahasiswa LULUS : ', jumlahLulus);
    writeln('Total Mahasiswa TIDAK LULUS : ', jumlahTidakLulus);
    readln;
end.