program GajiKaryawan;

uses crt;

var
    golongan: char;
    jamKerja, jamLembur: integer;
    gajiPokok, lembur, bonus, totalGaji: longint;

begin
    clrscr;

  // Memasukkan golongan karyawan
    write('Masukkan golongan karyawan (A/B/C): ');
    readln(golongan);

  // Memasukkan total jam kerja dalam satu minggu
    write('Masukkan total jam kerja per minggu: ');
    readln(jamKerja);

  // Menentukan gaji pokok berdasarkan golongan
    case golongan of
    'A', 'a':
        gajiPokok := 1500000;

    'B', 'b':
        gajiPokok := 2000000;

    'C', 'c':
        gajiPokok := 2500000;

    else
    begin
      // Menampilkan pesan jika golongan tidak valid
        writeln('Golongan tidak tersedia.');
        readln;
    end;
    end;

  // Mengecek apakah jam kerja melebihi 40 jam
    if jamKerja > 40 then
    begin
    // Menghitung jumlah jam lembur
    jamLembur := jamKerja - 40;

    // Menghitung gaji lembur sebesar Rp20.000 per jam
    lembur := jamLembur * 20000;
    end
    else
    begin
    // Tidak ada lembur jika jam kerja tidak melebihi 40 jam
    jamLembur := 0;
    lembur := 0;
    end;

  // Mengecek bonus khusus untuk golongan C dengan jam kerja lebih dari 50 jam
    if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
    bonus := 100000
    else
    bonus := 0;

  // Menghitung total gaji akhir
    totalGaji := gajiPokok + lembur + bonus;

  // Menampilkan rincian gaji karyawan
    writeln;
    writeln('Gaji Pokok     : Rp', gajiPokok);
    writeln('Lembur         : Rp', lembur);
    writeln('Bonus          : Rp', bonus);
    writeln('Total Gaji     : Rp', totalGaji);

    readln;
end.