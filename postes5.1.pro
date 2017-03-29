DOMAINS
orang = orang(nama,alamat)%orang disini memiliki nilai jamak yaitu nama dan alamat
nama = nama(pertama,kedua)%nama disini memiliki nilai jamak yaitu pertama dan kedua
alamat = alamat(jalan,kota_kab,propinsi)%alamat disini bersifat atau memiliki nilai jamak yaitu jalan, kota_kab, dan propinsi
jalan = jalan(nama_jalan,nomor) %jalan disini memiliki nilai jamak yaitu nama_jalan dan nomor
kota_kab,propinsi,nama_jalan = string %kota_kab,propinsi, dan nama_jalan bernilai string
pertama,kedua = symbol %pertama dan kedua bersifat atau bernilai simbol
nomor = integer %nomor bersifat integer

GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),%disini p1 yaitu diena adalah nama fatihah dan alamatnya jalan wijaya kusuma, nomor 12 berbah DIY dan
P1 = orang(nama(_,fatihah),Alamat), %p1 yaitu adalah sembarang nama fatihah dan alamatnya sama dengan P1 dan
P2 = orang(nama(nur,fatihah),Alamat),%p1 yaitu adalah nur adalah nama fatihah dan alamatnya sama dengan P1 dan
write("P1=",P1),nl, %dan disini penulisan p1 adalah = p1 dan
write("P2=",P2),nl. %p2 ditulis dengan d2
 %maka goalsnya akan mendapatkan 1 solusi yatiu 
 %P1=orang(nama("diena","fatihah"),alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY"))
 %P2=orang(nama("nur","fatihah"),alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY"))
 %P1=orang(nama("diena","fatihah"),alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY")), Alamat=alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY"), P2=orang(nama("nur","fatihah"),alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY"))
 %jadi disini telah di temukan lebih dari 1 nama orang dengan jenis alamat yang sama maka ini bersifat jamak yang kemudian di outputkan keduanya