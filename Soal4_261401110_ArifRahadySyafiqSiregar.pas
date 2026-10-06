program KalkulatorSederhana;

uses crt;

var
    pilihan: integer;
    a, b, hasil: real;
    angka1, angka2: integer;
    hasilDiv, hasilMod: integer;
    ulang: char;

begin
    clrscr;

    repeat
    // Menampilkan menu pilihan operasi
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln('================================');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    // Memasukkan bilangan sesuai pilihan
    if pilihan = 5 then
    begin
    write('Masukkan bilangan pertama: ');
    readln(angka1);
    write('Masukkan bilangan kedua: ');
    readln(angka2);
    end
    else
    begin
    write('Masukkan angka pertama: ');
    readln(a);
    write('Masukkan angka kedua: ');
    readln(b);
    end;

    // Menentukan operasi yang dipilih
    case pilihan of
    1:
        begin
          // Penjumlahan
    hasil := a + b;
    writeln('Hasil Penjumlahan = ', hasil:0:2);
        end;

    2:
        begin
          // Pengurangan
    hasil := a - b;
    writeln('Hasil Pengurangan = ', hasil:0:2);
        end;

    3:
        begin
          // Perkalian
          hasil := a * b;
        writeln('Hasil Perkalian = ', hasil:0:2);
        end;

    4:
        begin
          // Memeriksa pembagian dengan nol
        if b <> 0 then
        begin
            hasil := a / b;
            writeln('Hasil Pembagian = ', hasil:0:2);
        end
        else
        begin
            writeln('Pembagian dengan nol tidak diperbolehkan.');
        end;
        end;

    5:
        begin
          // Memeriksa DIV dan MOD dengan nol
        if angka2 <> 0 then
        begin
            hasilDiv := angka1 div angka2;
            hasilMod := angka1 mod angka2;
            writeln('Hasil DIV = ', hasilDiv);
            writeln('Hasil MOD = ', hasilMod);
        end
        else
        begin
            writeln('DIV dan MOD dengan nol tidak diperbolehkan.');
        end;
        end;

    else
      // Menampilkan pesan jika pilihan tidak tersedia
    writeln('Pilihan operasi tidak tersedia.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  // Mengulang program sampai pengguna memilih T atau t
until (ulang = 'T') or (ulang = 't');

writeln('Program selesai.');
readln;
end.