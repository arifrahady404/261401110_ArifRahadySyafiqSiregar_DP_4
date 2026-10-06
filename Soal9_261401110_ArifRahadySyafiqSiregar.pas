program JumlahHariBulan;

uses crt;

var
    tahun, bulan, jumlahHari: integer;
    kabisat: boolean;

begin
    clrscr;

  // Memasukkan tahun dan nomor bulan
    write('Masukkan tahun: ');
    readln(tahun);

    write('Masukkan nomor bulan (1-12): ');
    readln(bulan);

  // Mengecek apakah tahun merupakan tahun kabisat
    kabisat := ((tahun mod 400 = 0) or
                ((tahun mod 4 = 0) and (tahun mod 100 <> 0)));

  // Menentukan jumlah hari berdasarkan nomor bulan
    case bulan of
    1, 3, 5, 7, 8, 10, 12:
        begin
        // Bulan ini memiliki 31 hari
        jumlahHari := 31;
        end;

    4, 6, 9, 11:
        begin
        // Bulan ini memiliki 30 hari
        jumlahHari := 30;
        end;

    2:
        begin
        // Menentukan jumlah hari Februari berdasarkan tahun kabisat
        if kabisat then
            jumlahHari := 29
        else
            jumlahHari := 28;
        end;

    else
    begin
      // Menampilkan pesan jika nomor bulan tidak valid
        writeln('Nomor bulan tidak valid.');
        readln;
        exit;
    end;
    end;

  // Menampilkan jumlah hari dalam bulan
    writeln;
    writeln('Jumlah hari: ', jumlahHari, ' hari');

    readln;
end.