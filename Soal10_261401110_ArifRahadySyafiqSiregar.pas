program NamaHari;

uses crt;

var
    nomorHari: integer;

begin
    clrscr;

  // Memasukkan nomor hari dari 1 sampai 7
    write('Masukkan nomor hari (1-7): ');
    readln(nomorHari);

  // Menentukan nama hari berdasarkan nomor yang dimasukkan
    case nomorHari of
    1:
        begin
        // Nomor 1 adalah hari Senin
        writeln('Hari Senin');
        end;

    2:
        begin
        // Nomor 2 adalah hari Selasa
        writeln('Hari Selasa');
        end;

    3:
        begin
        // Nomor 3 adalah hari Rabu
        writeln('Hari Rabu');
        end;

    4:
        begin
        // Nomor 4 adalah hari Kamis
        writeln('Hari Kamis');
        end;

    5:
        begin
        // Nomor 5 adalah hari Jumat
        writeln('Hari Jumat');
        end;

    6:
        begin
        // Nomor 6 adalah hari Sabtu
        writeln('Hari Sabtu');
        end;

    7:
        begin
        // Nomor 7 adalah hari Minggu
        writeln('Hari Minggu');
        end;

    else
    begin
      // Menampilkan pesan jika nomor hari tidak sesuai
        writeln('Nomor hari tidak valid.');
    end;
    end;

  // Menunggu sebelum program selesai
    readln;
end.