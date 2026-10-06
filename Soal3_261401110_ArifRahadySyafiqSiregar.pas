program DeretAngka;

uses crt;

var
    n, angka, pilihan: integer;

begin
    clrscr;

  // Memasukkan nilai batas deret
    write('Masukkan nilai N: ');
    readln(n);

  // Memilih kategori deret
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilih kategori deret: ');
    readln(pilihan);

    angka := 1;

    writeln;
    writeln('Hasil deret:');

  // Mengulang angka dari 1 sampai N
    while angka <= n do
    begin
    // Melewati angka genap jika memilih deret ganjil
    if (pilihan = 1) and (angka mod 2 = 0) then
    begin
        angka := angka + 1;
        continue;
    end;

    // Melewati angka ganjil jika memilih deret genap
    if (pilihan = 2) and (angka mod 2 <> 0) then
    begin
        angka := angka + 1;
        continue;
    end;

    // Melewati angka yang merupakan kelipatan 5
    if angka mod 5 = 0 then
    begin
        angka := angka + 1;
        continue;
    end;

    // Menampilkan angka yang memenuhi semua kondisi
    write(angka, ' ');

    angka := angka + 1;
    end;

    readln;
end.