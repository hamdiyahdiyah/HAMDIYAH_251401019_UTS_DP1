program SewaMobil;
uses crt;
var
    jenisMobil: string;
    jarakTempuh, lamaSewa, biaya1, biaya2, totalBiaya: longint;
begin
    clrscr;
    // Input jenis mobil yang akan disewa
    write('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV): ');
    readln(jenisMobil);
    // Input lama sewa mobil
    write('Pemesanan Berapa Hari: ');
    readln(lamaSewa);
    // Input jarak tempuh
    write('Berkendara Seberapa Jauh (km): ');
    readln(jarakTempuh);

    // Hitung biaya sewa berdasarkan jenis mobil dan lama sewa
    if (jenisMobil = 'Ekonomi') then
        biaya1 := 300000 * lamaSewa
    else if (jenisMobil = 'Sedan') then
        biaya1 := 400000 * lamaSewa
    else if (jenisMobil = 'SUV') then
        biaya1 := 500000 * lamaSewa
    else
        exit;

    // Hitung biaya berdasarkan jarak tempuh
    if (jarakTempuh <= 100) then
        biaya2 := 1500 * jarakTempuh
    else if (jarakTempuh > 100) and (jarakTempuh <= 200) then
        biaya2 := (1000 * (jarakTempuh - 100)) + 1500 * 100
    else if (jarakTempuh > 200) then
        biaya2 := (500 * (jarakTempuh - 200)) + (1000 * 100) + (1500 * 100)
    else
        exit;
    
    // Hitung total biaya sewa mobil
    totalBiaya := biaya1 + biaya2;
    
    // Tampilkan total biaya sewa mobil
    writeln('Total Biaya Sewa Mobil: Rp', totalBiaya);
end.












          




















