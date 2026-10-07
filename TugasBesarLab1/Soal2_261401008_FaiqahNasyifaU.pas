program soal2;
uses crt;
const 
Kata_Sandi_Rahasia = 'pascal123';
var 
inpuTSandi: string;
percobaan: integer;
berhasil: boolean;
begin
    clrscr;
    writeln('===SISTEM VERIVIKASI KATA SANDI===');
    percobaan := 0;
    berhasil := false;
    repeat 
    percobaan := percobaan + 1;
    write('masukan kata sandi (percobaan', percobaan, '/3: '); readln(inputSandi);
    if inpuTSandi = Kata_Sandi_Rahasia then
    begin
        berhasil := true;
        writeln;
        writeln('Login Berhasil Selamat Datang');
        break
    end
    else 
    begin
        if percobaan < 3 then
        writeln ('Kata Sandi Salah! Coba Lagi.')
        else
        writeln;
        end;
        until (percobaan = 3) or berhasil;
        if not berhasil then
        begin
            writeln('Akses Ditolak! Akun Terkunci.');
        end;
    writeln('=========================================');
    readln;
end.