DOMAINS
nama = orang(symbol,symbol) /* (Pertama , Kedua) */ %disini nama adalah orang yang memiliki nilai symbol 
hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */ %tanggal_lahir adalah tanggal_lahir yang bernilai integer dan symbol atau string
telepon = symbol /* Nomor telepon */ %telepon bernilai symbol
PREDICATES
nondeterm daftar_telepon(nama,symbol,hari_lahir) %nama ini bernilai dari nama, symbol atau sesuatu yang bernilai string dan hari_lahir yang solusinya lebih dari 1 karena nondeterm 
yang_ulang_tahun_bulan_ini %yang_ulang_tahun_bulan_ini ketentuan yang tidak berparameter
konversi_bulan(symbol,integer) % konversi_bulan memiliki nilai symbol dan integer
cek_bulan_ulang_tahun(integer,hari_lahir) %cek_bulan_ulang_tahun memiliki nilai integer, dan hari_lahir
cetak_orang(nama)%cetak_orang bernilai nama

CLAUSES
yang_ulang_tahun_bulan_ini:- %yang_ulang_tahun_bulan_ini jika maka 
write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,
write(" Nama Pertama\t\t Nama Kedua\n"),
write("******************************************************"),nl,
date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */ %bulan_ini adalah datenya yang di ambil dari sistem komputer dan
daftar_telepon(Orang, _, Tanggal), %orang yang memiliki daftar_telepon dan tanggal dan
cek_bulan_ulang_tahun(Bulan_ini, Tanggal), % bulan_ini sudah di cek_bulan_ulang_tahun dan tanggalnya dan
cetak_orang(Orang), %orangnya ada
fail. %ini memaksa program untuk di keluarkan
yang_ulang_tahun_bulan_ini:- %yang_ulang_tahun_bulan_ini jika maka 
write("\n\n Tekan sembarang tombol..."),nl,
readchar(_). %disini sembarang char akan dibaca
cetak_orang(orang(Pertama,Kedua)):- %nama orang pertama dan kedua akan di cek dan di cetak
write(" ",Pertama,"\t\t\t ",Kedua),nl.
cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):- %maka bulan tanggal_lahir akan di cek_bulan_ulang_tahunnya
konversi_bulan(Bulan,Bulan1), %kemudian bulan akan di konversi kebulan1
Bul = Bulan1. %bul sama dengan bulan1
daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)). %terdapat orang dengan nama erwin dan effendy dengn daftar telepon 767-8463 dan tanggal lahirnya 3 januari 1955
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)). %sama seperti di atas dan seterusnya
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).
daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).
daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).
konversi_bulan(jan, 1). %disni terdapat  bulan januari yang akan dikonversi menjadi bulan 1
konversi_bulan(feb, 2).%dan seterusnya sama seperti di atas
konversi_bulan(mar, 3).
konversi_bulan(apr, 4).
konversi_bulan(may, 5).
konversi_bulan(jun, 6).
konversi_bulan(jul, 7).
konversi_bulan(aug, 8).
konversi_bulan(sep, 9).
konversi_bulan(oct, 10).
konversi_bulan(nov, 11).
konversi_bulan(dec, 12).
GOAL
yang_ulang_tahun_bulan_ini. %maka pada golasnya akan mencari siapa yang ulang tahun bulan ini mengikuti bulan dari sistem komputer
%maka karena yang diinginkan dua nama maka keluarllah solusi dengan nama kusdir dan prihatin karena mengikuti bulan ini beserta dengn ketentuan yang ada di atas.