PREDICATES %berisi pendeklarasian predikat yang nantinya akan didefinisikan dalam clauses
beli_mobil(symbol,symbol) %beli_mobil memiliki nilai symbol
nondeterm mobil(symbol,symbol,integer) %mobil memiliki nilai symbol dan integer dan memiliki lebih dari 1 solusi yang dapat di temukan
warna(symbol,symbol) %warna memilliki nilai symbol

CLAUSES %disini berisi fakta dan kebenaran yang digunakan sebagai objeknya
beli_mobil(Model,Warna):- %model beli_mobil warna jika maka
mobil(Model,Warna,Harga),%model mobil warna mobil dan harga mobil atau
warna(Warna,seksi),!,% warnanya seksi atau tidak(cut) atau
Harga < 25000. %harganya lebih kecil dari 25000
mobil(ferrari,hijau,25000). %disini berisi ketentuan atau aturan fakta ferrrari adalah jenis mobil berwarna hijau yang harga mobilnya adalah 25000
mobil(jaguar,hitam,24000).%jaguar adalah jenis mobil berwarna hitam yang harga mobilnya adalah 24000
mobil(jaguar,merah,26000).%jaguar adalah jenis mobil berwarna merah yang harga mobilnya adalah 26000
mobil(porsche,merah,24000).%porsche adalah jenis mobil berwarna merah yang harga mobilnya adalah 26000
warna(merah,seksi).%merah adalah warna yang seksi
warna(hitam,wibawa).%hitam adalah warna yang wibawa
warna(hijau,sejuk).%hijau adalah warna yang sejuk
GOAL  %disini berisi aturan yang akan digunakan untuk mencari hasil akhir yang akan di proses dari predicates dan clauses
beli_mobil(jaguar, Y).%maka goal yg di cari yaitu Y, Y adalah membeli mobil jaguar yang harganya telah di tentukan pada clauses yaitu yang hargannya di bawah 25000


%maka langkah pertama beli_mobil akan mengecek model dan warna jika maka model dan warna harganya di cek dan warnanya adalah merah atau seksi dan harganya di bawah 25000 maka akan di beli
%maka kita akan mengecek mobil yang pertama karena mobil yang diminta adalah mobil jaguar dan pada awal pengecekan ketemu jenis mobil lain makan akan batal dan kembali mengulang untuk mengecek dari awal lagi
%pengecekan kembali ini dilihat dari proses yang paling dekat karena dari awal sudah ditemukan jenis mobil yang berbeda maka akan mengecek ulang jenis mobil
%pada pengecekan kedua kini ditemukan mobil jaguar kemudian di cek pula warna mobilnya, warna mobil yang diinginkan adalah warna seksi atau merah, karena warna mobil jaguar yang tersedia berwarna hitam walaupun harganya dibawah 25000 maka proses ini pun tetap akan batal dan melakukan backtracking kembali karena warnanya tidak sesuai
%kemudian langkah berikutnya yaitu back pada yang terdekat ini akan mencari dan mengecek jenis mobil yang selanjutnya
%setelh kembali cek ternayata di temukan mobil jaguar lagi, kemudian di cek pula warnanya maka warna dan model mobilnya telah terpenuhi yaitu mobil jaguar berwarna merah atau merwarna seksi
%kemudian di lanjutkan dengan pengecekan mobil(model,warna,harga) sehingga di dapatkan hasil mobil jaguar berwarna merana merah dan harganya 26000
%kemudian masuk pada pengecekan warna lagi dan warnanya pun telah sesuai yaitu merah atau seksi
%setelah semua selesai di cek maka akan melanjutkan pengecekan pada harga, mobil ini akan di beli setelah semua fakta dipenuhi. fakta terakhir adalah jika harganya di bawah 26000 maka mobil ini akan dibeli
%mobil ini memiliki harga 26000 karena harganya di atas 25000 maka pembeliannya di batalkan
% karena pada proses terakhir telah memasuki tahap warna dan mendpatkn cut proses ini langsung dibekukan dan akan langsung menuju goal
%hasil dari goal adalah no solution atau mobil yang akan di beli tidak ada karena mobil yang akan di beli dengan jenis mobil jaguar berwarna merah atau seksi dan harganya dibawah 25000 tidak tersedia 