DOMAINS %berisi pendeklarasian predikat yang nantinya akan didefinisikan dalam clauses
nama,jender,pekerjaan,benda,alasan,zat = symbol %nama,jender,pekerjaan,benda,alasan,zat bernlai symbol
umur=integer %umur bernilai integer

PREDICATES %disini berisi fakta dan kebenaran yang digunakan sebagai objeknya
nondeterm orang(nama, umur, jender, pekerjaan)% banyak memiliki kemungkinan orang ini memiliki nama, umur, jender dan pekerjaan 
nondeterm selingkuh(nama, nama) % banyak memiliki kemungkinan seserang yang bernama selingkung dengan seseorang yang bernama
terbunuh_dengan(nama, benda) %seseorang dengan nama terbunuh dengan benda
terbunuh(nama)%seseorang yang bernama terbunuh
nondeterm pembunuh(nama)% banyak memiliki kemungkinan nama seseorang yang jadipembunuh
motif(alasan)  %alasan motif pembunuhan
ternodai(nama, zat)%nama seseoran ternodai zat
milik(nama, benda)%nama seseorang ini memiliki benda
nondeterm cara_kerja_mirip(benda, benda)% banyak memiliki kemungkinan suatu benda mirip cara kerjsnys dengsn sutau benda lain
nondeterm kemungkinan_milik(nama, benda) % banyak memiliki kemungkinan nama seseorang mungkin memiliki suatau benda
nondeterm dicurigai(nama) % banyak memiliki kemungkinan nama seseorang dicurigai

/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES
orang(budi,55,m,tukang_kayu). %budi adalah orang yang berumur 55tahun dengan jender m dan pekerjaannya adalah tukang kayu
orang(aldi,25,m,pemain_sepak_bola). %aldi adalah orang yang berumur 25tahun dengan jender m dan pekerjaannya adalah pemain sepak bola
orang(aldi,25,m,tukang_jagal). %aldi adalah orang yang berumur 25tahun dengan jender m dan pekerjaannya adalah tukang jagal
orang(joni,25,m,pencopet).%joni adalah orang yang berumur 25tahun dengan jender m dan pekerjaannya adalah pencopet
selingkuh(ina,joni). %ina selingkuh dengan joni
selingkuh(ina,budi). %ina selingkuh dengan budi
selingkuh(siti,joni). %ina siti selingkuh dengan joni
terbunuh_dengan(siti,pentungan). %siti terbunuh dengan pentungan
terbunuh(siti).%siti terbunuh
motif(uang). %uang adalah motif
motif(cemburu). % cemburu adalah motifnya
motif(dendam). %dendam adalah motifnya
ternodai(budi, darah). %budi ternodai darah
ternodai(siti, darah).%siti ternodai darah
ternodai(aldi, lumpur).%aldi ternodai lumpur
ternodai(joni, coklat).%joni ternodai coklat
ternodai(ina, coklat).%ina ternodai coklat
milik(budi,kaki_palsu). %budi memiliki kaki palsu
milik(joni,pistol). %joni memiliiki pistol

/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan). %kaki palsu cara kerjanya mirip pentungan
cara_kerja_mirip(balok, pentungan). %balok cara kerjanya mirip pentungan
cara_kerja_mirip(gunting, pisau).%gunting cara kerjanya mirip pisau
cara_kerja_mirip(sepatu_bola, pentungan).%sepatu bola cara kerjanya mirip pentungan
kemungkinan_milik(X,sepatu_bola):- %disini berisi ketentuan atau aturan fakta X ini adalah seseorang yang kemingkinan memiliki sepatu bola jika maka
orang(X,_,_,pemain_sepak_bola). %seseorang ini adalah pemain sepak bola
kemungkinan_milik(X,gunting):- % seseeorang ini juga memiliki gunting jika maka
orang(X,_,_,pekerja_salon). % seseorang ini adalah pekerja salon
kemungkinan_milik(X,Benda):- %seseorang ini juga memiliki benda jika maka
milik(X,Benda).%seseorang memiliki benda
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %seseorang di curigai jika maka
terbunuh_dengan(siti,Senjata) ,% siti terbunuh dengan suatau jenis senjata dan
cara_kerja_mirip(Benda,Senjata) ,%  benda ini memiliki cara kerja yang mirip dengan suatu benda dan
kemungkinan_milik(X,Benda).%seseorang kemungkinan yang memiliki benda
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %seseorang dicurigai jika maka
motif(cemburu),%dengan motif cemburu dan
orang(X,_,m,_),% seseorang dengan jender m dan
selingkuh(siti,X). %siti selingkuh denga seseorang
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %seseorang dicurigai jika maka
motif(cemburu), %motifnya adalah cemburu dan
orang(X,_,f,_), %seseorang memiliki jender f dan
selingkuh(X,Lakilaki),% seseoranf selingkuh dengan laki-laki dan
selingkuh(siti,Lakilaki). %siti selingkuh dengan laki-laki
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %seseorang dicurigai jika maka 
motif(uang),%motifnya uang dan
orang(X,_,_,pencopet).%seseoarng di copet
pembunuh(Pembunuh):- %pembunuh di bunuh jika maka 
orang(Pembunuh,_,_,_),%pembunuhny adalah seseorang dan
terbunuh(Terbunuh), % terbunuh dan
Terbunuh <> Pembunuh, /* Bukan bunuh diri */ %terbunuh sama dengan pembunuh
dicurigai(Pembunuh), %pembunuh di curigai 
ternodai(Pembunuh,Zat), %pembunuh ternodai zat
ternodai(Terbunuh,Zat).%terbunuh dinodai zat
GOAL
pembunuh(X). %goal yang di cari adalah siapakan pembunuhnya
%Terangkan langkah demi langkah bagaimana Visual Prolog memberikan jawaban terhadap goal tersebut (melalui proses unifikasi dan lacak balik).

%fakta di atas di temukan bahwa budi adalah orang yang berumur 55tahun dengan jender m dan pekerjaannya adalah tukang kayu budi selingkuh dengan ina budi ternyata memiliiki kaki palsu yang cara kerjanya sama seperti pentungan
%budi di curigai karena siti tebunuh dengan senjata yang di gunakan sebagai pentungan karena budi memiliki kaki palsu yang mirip dengan pentungan dan ini kemungkinnan milik budi
% budi di curigai cemburu karena siti selingkuh dengan joni
% budi ternodai darah dan siti juga maka pembunuhnya adalah budi