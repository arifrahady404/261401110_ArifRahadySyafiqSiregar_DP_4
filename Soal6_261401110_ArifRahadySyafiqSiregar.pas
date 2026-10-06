program NilaiAkhirMatkul;

uses crt;

var
    nilaiTugas, nilaiUTS, nilaiUAS: real;
    kehadiran, nilaiAkhir: real;
    indeks: char;

begin
    clrscr;

  // Memasukkan nilai tugas, UTS, UAS, dan persentase kehadiran
    write('Masukkan Nilai Tugas: ');
    readln(nilaiTugas);

    write('Masukkan Nilai UTS: ');
    readln(nilaiUTS);

    write('Masukkan Nilai UAS: ');
    readln(nilaiUAS);

    write('Masukkan Kehadiran (%): ');
    readln(kehadiran);

  // Menghitung nilai akhir sesuai bobot masing-masing
  nilaiAkhir := (nilaiTugas * 30 / 100) +
                (nilaiUTS * 30 / 100) +
                (nilaiUAS * 40 / 100);

  // Menentukan indeks huruf berdasarkan nilai akhir
    if nilaiAkhir >= 85 then
    begin
    indeks := 'A';
    end
    else if nilaiAkhir >= 75 then
    begin
    indeks := 'B';
    end
    else if nilaiAkhir >= 60 then
    begin
    indeks := 'C';
    end
    else if nilaiAkhir >= 50 then
    begin
    indeks := 'D';
    end
    else
    begin
    indeks := 'E';
    end;

  // Menampilkan nilai akhir dan indeks huruf
    writeln;
    writeln('Nilai Akhir : ', nilaiAkhir:0:2);
    writeln('Indeks Huruf: ', indeks);

  // Menentukan kelulusan berdasarkan nilai akhir dan kehadiran
    if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    begin
    writeln('Status      : LULUS');
    end
    else
    begin
    writeln('Status      : TIDAK LULUS');
    end;

    readln;
end.