program TokoBuku;

uses crt;

var
    n, i: integer;
    harga, total, diskon, totalBayar: real;
    persenDiskon: integer;

begin
    clrscr;

  // Memasukkan jumlah barang yang dibeli
    write('Masukkan jumlah barang: ');
    readln(n);

    total := 0;
    writeln;
    writeln('Rincian Belanja:');

  // Menginput harga setiap barang dan menghitung total belanja
    for i := 1 to n do
    begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);

    total := total + harga;

    writeln('Harga barang ke-', i, ' : Rp', harga:0:2);
    end;

  // Menentukan persentase diskon berdasarkan total belanja
    if total < 100000 then
    begin
    persenDiskon := 0;
    end
    else if total < 500000 then
    begin
    persenDiskon := 10;
    end
    else
    begin
    persenDiskon := 20;
    end;

  // Menghitung besar diskon dan total pembayaran
  diskon := total * persenDiskon / 100;
    totalBayar := total - diskon;

  // Menampilkan hasil perhitungan
    writeln;
    writeln('Total Sebelum Diskon : Rp', total:0:2);
    writeln('Diskon               : ', persenDiskon, '%');
    writeln('Besar Diskon         : Rp', diskon:0:2);
    writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);

    readln;
end.
