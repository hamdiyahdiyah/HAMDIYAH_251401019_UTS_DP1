program Praktikan;
uses crt;
var
    nama, indeks : string;
    nilaiAkhir, tpl, tpm, i: integer; 
begin
    clrscr;
    // Inisialisasi jumlah praktikan lulus dan mengulang
    tpl := 0;
    tpm := 0;

    // Ulangi dari 1 sampai 5 untuk setiap praktikan
    for i := 1 to 5 do
    begin
        // Input nama praktikan
        write('Nama Praktikan ', i, ': ');
        readln(nama);
        // Input nilai akhir praktikan
        write('Nilai Akhir: ');
        readln(nilaiAkhir);

        // Tentukan indeks nilai berdasarkan nilai akhir
        if (nilaiAkhir >= 90) then
            indeks := 'A'
        else if (nilaiAkhir >= 85) then
            indeks := 'B+'
        else if (nilaiAkhir >= 75) then
            indeks := 'C+'
        else if (nilaiAkhir >= 70) then
            indeks := 'C'
        else if (nilaiAkhir >= 65) then
            indeks := 'D'
        else
            indeks := 'E';

        // Tampilkan (langsung) indeks nilai praktikan
        writeln('Indeks Nilai Praktikan ', i, ': ', indeks);
        writeln;

        // Hitung jumlah praktikan lulus
        if (indeks = 'A') or (indeks = 'B+') or (indeks = 'C+') or (indeks = 'C') then
            tpl := tpl + 1
        // Hitung jumlah praktikan mengulang
        else
            tpm := tpm + 1;
    end;

    // Tampilkan total praktikan lulus
    writeln('Total Praktikan Lulus: ', tpl);
    // Tampilkan total praktikan mengulang
    writeln('Total Praktikan Mengulang: ', tpm);

end.