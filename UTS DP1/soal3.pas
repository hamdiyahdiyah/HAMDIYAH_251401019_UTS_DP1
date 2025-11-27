program HitungAngka;
uses crt;
var
    n, i, angka, total: integer;
    rata_rata: real;
begin
    clrscr;
    // Input banyaknya angka yang akan dimasukkan
    write('N: ');
    readln(n);

    // Inisialisasi total
    total := 0;

    // Ulangi angka dari 1 sampai banyaknya angka (n)
    for i := 1 to n do
    begin
        // Input angka ke-i
        write('Angka ke-', i, ': ');
        readln(angka);
        // Tambahkan angka ke-i ke total
        total := total + angka;
    end;

    // Hitung rata-rata
    rata_rata := total / n;

    // Tampilkan total angka
    writeln('Jumlah Total: ', total);
    // Tampilkan rata-rata angka
    writeln('Rata-rata: ', rata_rata:0:1);
end.