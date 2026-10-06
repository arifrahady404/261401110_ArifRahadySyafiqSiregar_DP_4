program TarifParkir;

uses crt;

var
    kode: char;
    lamaParkir: integer;
    tarif, tarifAwal, tarifTambahan, tarifMaksimal: integer;

begin
    clrscr;

  // Memasukkan kode kendaraan dan lama parkir
    write('Masukkan kode kendaraan (M/K/B): ');
    readln(kode);

    write('Masukkan lama parkir (jam): ');
    readln(lamaParkir);

  // Menentukan tarif sesuai jenis kendaraan
    case kode of
    'M', 'm':
        begin
        tarifAwal := 5000;
        tarifTambahan := 3000;
        tarifMaksimal := 30000;
        end;

    'K', 'k':
        begin
        tarifAwal := 2000;
        tarifTambahan := 1000;
        tarifMaksimal := 10000;
        end;

    'B', 'b':
        begin
        tarifAwal := 10000;
        tarifTambahan := 5000;
        tarifMaksimal := 50000;
        end;

    else
    begin
      // Menampilkan pesan jika kode kendaraan tidak valid
        writeln('Kode kendaraan tidak tersedia.');
        readln;
        exit;
    end;
    end;

  // Memeriksa apakah lama parkir melebihi 10 jam
    if lamaParkir > 10 then
    begin
    // Menggunakan tarif maksimal flat
    tarif := tarifMaksimal;
    end
    else
    begin
    // Menggunakan tarif jam pertama dan tarif tambahan
    if lamaParkir <= 1 then
    begin
        tarif := tarifAwal;
    end
    else
    begin
      // Menghitung tarif untuk jam berikutnya
      tarif := tarifAwal + ((lamaParkir - 1) * tarifTambahan);
    end;
    end;

  // Menampilkan total tarif parkir
    writeln;
    writeln('Total Tarif Parkir: Rp', tarif);

    readln;
end.