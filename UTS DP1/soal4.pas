program BilanganPrima;
uses crt;
var
    n, i, j: integer;
    prima, primaPertama: boolean;
begin
    clrscr;
    // Input batas atas bilangan prima
    write('n = ');
    readln(n);

    // Tampilkan bilangan prima mulai dari 1 hingga batas atas (n)
    writeln('Bilangan prima antara 1 dan ', n, ' adalah:');
    // Inisialisasi bilangan prima pertama
    primaPertama := True;

    // Ulangi batas bawah (i) dari 2 sampai batas atas (n)
    for i := 2 to n do  
    begin
        // Anggap i sebagai bilangan prima
        prima := True;
        // Ulangi faktor pembagi (j) dari 2 sampai i-1
        for j := 2 to i - 1 do
        begin
            // Cek apakah i habis dibagi j
            if (i mod j = 0) then
            begin
                // Jika iya, maka i bukan bilangan prima
                prima := False;
                // Hentikan pengecekan lebih lanjut
                break;
            end;
        end;

        // Jika i adalah bilangan prima, tampilkan i
        if prima then
            // Cek apakah i yang dicetak merupakan bilangan prima pertama
            if primaPertama then
            begin
                // Jika iya, tampilkan i dan set bilangan prima berikutnya bukan yang pertama
                write(i);
                primaPertama := False;
            end
            // Tambahkan koma sebagai pemisah antara setiap bilangan prima
            else
            write(', ', i);
    end;
end.