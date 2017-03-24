/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E07.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates %berisi pendeklarasian predikat yang nantinya akan didefinisikan dalam clauses
  buy_car(symbol,symbol) - determ (i,o) %buy_car memiliki nilai Symbol
  car(symbol,symbol,integer) - nondeterm (i,o,o) %car memiliki nilai symbol dan integer,dan memiliki lebih dari 1 solusi
  colors(symbol,symbol) - nondeterm (i,i)%color memiliki nilai symbol,dan memiliki lebih dari 1 solusi

clauses %disini berisi fakta dan kebenaran yang digunakan sebagai objeknya
  buy_car(Model,Color):- %model buy_car color jika maka
	car(Model,Color,Price),%car memiliki model, color, dan pricenya dan
	colors(Color,sexy),!, %colornya adalah sexy dan (cut)
	Price > 25000.%harganya kurang dari 25000

  car(maserati,green,25000).  %disini berisi ketentuan atau aturan fakta mobil dengan jenis maserati adalah jenis mobil berwarna hijau yang harga mobilnya adalah 25000
  car(corvette,black,24000). %jenis mobil corvette berwarna hitam yang harga mobilnya adalah 24000
  car(corvette,red,26000). %jenis mobil corvette berwarna merah yang harga mobilnya adalah 26000
  car(porsche,red,24000). %jenis mobil porsche berwarna merah yang harga mobilnya adalah 26000

  colors(red,sexy). %red warnanya sexy
  colors(black,mean). %black warnanya wibawa
  colors(green,preppy). %hijau  warnanya sejuk

goal %disini berisi aturan yang akan digunakan untuk mencari hasil akhir yang akan di proses dari predicates dan clauses
  buy_car(corvette,Y). %maka goal yg di cari yaitu Y, Y adalah membeli mobil corvette yang harganya telah di tentukan pada clauses yaitu yang hargannya di bawah 25000
  
%maka langkah pertama beli_mobil akan mengecek model dan warna jika maka model dan warna harganya di cek dan warnanya adalah merah atau seksi dan harganya di bawah 25000 maka akan di beli
%maka kita akan mengecek mobil yang pertama karena mobil yang diminta adalah mobil corvette dan pada awal pengecekan ketemu jenis mobil lain makan akan batal dan kembali mengulang untuk mengecek dari awal lagi
%pengecekan kembali ini dilihat dari proses yang paling dekat karena dari awal sudah ditemukan jenis mobil yang berbeda maka akan mengecek ulang jenis mobil
%pada pengecekan kedua kini ditemukan mobil corvette kemudian di cek pula warna mobilnya, warna mobil yang diinginkan adalah warna seksi atau merah, karena warna mobil corvette yang tersedia berwarna hitam maka proses ini batal karna tidak sesuai dengan rulenya
%kemudian langkah berikutnya yaitu back pada yang terdekat ini akan mencari dan mengecek jenis mobil yang selanjutnya
%setelh kembali cek ternayata di temukan mobil corvette lagi, kemudian di cek pula warnanya maka warna dan model mobilnya telah terpenuhi yaitu mobil corvette berwarna merah atau merwarna seksi
%kemudian di lanjutkan dengan pengecekan mobil(model,warna,harga) sehingga di dapatkan hasil mobil corvette berwarna merana merah dan harganya 26000
%kemudian masuk pada pengecekan warna lagi dan warnanya pun telah sesuai yaitu merah atau seksi
% karena pada proses terakhir telah memasuki tahap warna dan mendpatkn cut proses ini langsung dibekukan dan akan langsung menuju goal
%hasil dari goal adalah mobil corvette berwarna merah yang akan dibeli.