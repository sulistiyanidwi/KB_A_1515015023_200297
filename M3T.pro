 domains %pada domain berisi pernyataan jenis variable
%mk = mata kuliah, m = mahasiswa, n = nilai
mk,m,n=symbol
predicates %berisi pendeklarasian predikat yang nantinya akan didefinisikan dalam clauses
nondeterm n(m,n) %disini memiliki banyak solusi karena nondeterm keseluruhan ketentuannya
nondeterm diambil(mk,m,m,m,m,m)
nondeterm nm(m,m,m,m,m,n,n,n,n,n)
nondeterm lulus(m)
nondeterm taklulus(m)

clauses %disini berisi fakta dan kebenaran yang digunakan sebagai objeknya.
diambil(intelejensi_buatan,irfan,komeng,dati,fatima,maspion).
diambil(pde,ricky,embang,salmin,vina,sondang).
diambil(sistem_operasi,pamuji,luki,sadek,yusida,eka).
nm(irfan,komeng,dati,fatima,maspion,a,d,c,b,c).
nm(ricky,embang,salmin,vina,sondang,e,a,d,b,c).
nm(pamuji,luki,sadek,yusida,eka,d,e,b,a,a).
n(M,N):-nm(M,_,_,_,_,N,_,_,_,_);nm(_,M,_,_,_,_,N,_,_,_);%disini berisi ketentuan atau aturan fakta yang akan di jadikan proses 
nm(_,_,M,_,_,_,_,N,_,_);nm(_,_,_,M,_,_,_,_,N,_);nm(_,_,_,_,M,_,_,_,_,N).
lulus(M):-n(M,N),N=a;n(M,N),N=b;n(M,N),N=c.
taklulus(M):-n(M,_),not(lulus(M)).

goal %disini berisi aturan yang akan digunakan untuk mencari hasil akhir yang akan di proses dari predicates dan clauses
write("Mahasiswa yang mengambil matkul Intelejensi Buatan:"),nl,diambil(intelejensi_buatan,M1,M2,M3,M4,M5);
nl,write("Mahasiswa yang tidak lulus:"),nl,taklulus(Mahasiswa);
nl,write("Mahasiswa yang lulus:"),nl,lulus(Mahasiswa);
nl,write("Seluruh Mata Kuliah:"),nl,diambil(Matakuliah,_,_,_,_,_);
nl,write("Seluruh Mahasiswa:"),nl,diambil(_,M1,M2,M3,M4,M5).