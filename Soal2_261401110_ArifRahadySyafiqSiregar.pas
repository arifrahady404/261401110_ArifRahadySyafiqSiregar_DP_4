program VerifikasiPassword;

uses crt;

var
    password, passwordRahasia: string;
    percobaan: integer;
    berhasil: boolean;

begin
    clrscr;

  // Menentukan kata sandi rahasia
    passwordRahasia := 'pascal123';

    percobaan := 0;
    berhasil := false;

  // Mengulang proses login sampai 3 kali percobaan
    repeat
    percobaan := percobaan + 1;

    write('Masukkan kata sandi: ');
    readln(password);

    // Memeriksa apakah kata sandi yang dimasukkan benar
    if password = passwordRahasia then
    begin
        writeln('Login Berhasil! Selamat Datang');
        berhasil := true;

      // Menghentikan perulangan jika login berhasil
        break;
    end
    else
    begin
        writeln('Kata sandi salah.');
    end;

    until percobaan = 3;

  // Menampilkan pesan jika semua percobaan gagal
    if not berhasil then
    begin
    writeln('Akses Ditolak! Akun Terkunci.');
    end;

    readln;
end.