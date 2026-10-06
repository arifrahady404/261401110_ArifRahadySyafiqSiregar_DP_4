program RekapitulasiNilai;

uses crt;

var
    m, n, i, j: integer;
    nilai, total, rataRata: real;
    jumlahLulus, jumlahTidakLulus: integer;

begin
    clrscr;

  // Memasukkan jumlah mahasiswa dan jumlah tugas
    write('Masukkan jumlah mahasiswa: ');
    readln(m);

    write('Masukkan jumlah tugas: ');
    readln(n);

    jumlahLulus := 0;
    jumlahTidakLulus := 0;

    writeln;

  // Loop luar untuk memproses setiap mahasiswa
    for i := 1 to m do
    begin
    total := 0;

    writeln('Mahasiswa ke-', i);

    // Loop dalam untuk memasukkan nilai setiap tugas
    for j := 1 to n do
    begin
        write('Masukkan nilai tugas ke-', j, ': ');
        readln(nilai);

      // Menjumlahkan seluruh nilai tugas mahasiswa
        total := total + nilai;
    end;

    // Menghitung rata-rata nilai mahasiswa
    rataRata := total / n;

    writeln('Rata-rata: ', rataRata:0:2);

    // Menentukan kelulusan berdasarkan nilai rata-rata
    if rataRata >= 65 then
    begin
        writeln('Status: LULUS');
        jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
        writeln('Status: TIDAK LULUS');
        jumlahTidakLulus := jumlahTidakLulus + 1;
    end;

    writeln;
    end;

  // Menampilkan jumlah mahasiswa berdasarkan status kelulusan
    writeln('===== REKAPITULASI =====');
    writeln('Total mahasiswa LULUS       : ', jumlahLulus);
    writeln('Total mahasiswa TIDAK LULUS : ', jumlahTidakLulus);

    readln;
end.