

             
program GenapGanjil;
uses crt;
var
    nama: string;
    n, i, j: integer;
begin
    clrscr;
    // Input nama
    write('Masukkan nama Anda: ');
    readln(nama);
    // Input batas angka
    write('Masukkan n: ');
    readln(n);
    writeln;

    writeln(nama, ', inilah pola angka rahasiamu: ');
    writeln;
    
    // Inisialisasi baris (i) adalah 1
    i := 1;
    // Ulangi baris sampai n
    while (i <= n) do
    begin
        // Inisialisasi kolom (j) dari 1
        j := 1;
        // Ulangi j sampai i
        while (j <= i) do
        begin
            // Tampilkan jika i merupakan angka genap
            if (i mod 2 = 0) then
                write(i, ' (genap) ')
            // Tampilkan jika i merupakan angka ganjil
            else
                write(i, ' (ganjil) ');
            // inkremenkan j
            j += 1;
        end;
        writeln;
        // inkremenkan i
        i += 1;
    end;
  end.