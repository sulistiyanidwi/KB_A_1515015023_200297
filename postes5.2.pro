DOMAINS
benda = buku(judul, pengarang) ; %benda disini adalah buku yang memiliki argumen yang berbeda yaiu judul dan pengarang dan sekaligus
kuda(nama) ; kapal ; % nama kuda sekaligus kapal
bukubank(saldo) %saldonya buku bank
judul, pengarang, nama = symbol % judul, pengarang, dan nama bernilai simbol
saldo = real %saldo memiliki tipe real

PREDICATES
nondeterm milik(nama,benda) %jadi jadi nama pemilik benda ini memiliki lebih dari 1 solusi karena bersifat nondeterm

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")). %erwin memiliki buku "Markesot Bertutur", "Emha Ainun Najib" dan
milik(erwin, kuda(buraq)). %erwin memiliki buraq kuda.
milik(erwin, kapal). %erwin memiliki kapal
milik(erwin, bukubank(1000)). %erwin memiliki bukubank
GOAL
milik(erwin, Benda). %maka disini kita mencari apakah yang dimiliki erwin
%jadi disini kita memiliki keempat atau pernyataan yang di jabarkan pada clauses yaitu
%Benda=buku("Markesot Bertutur","Emha Ainun Najib")
%Benda=kuda("buraq")
%Benda=kapal
%Benda=bukubank(1000) 
%karena buku, kuda baruq, kapal, dan bukubank adalah benda yang dimiliki erwin