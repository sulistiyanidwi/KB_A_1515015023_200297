PREDICATES %berisi pendeklarasian predikat yang nantinya akan didefinisikan dalam clauses
putra(STRING,STRING) %putra memiliki fungsi satuan yaitu nilai string
saudara_perempuan(STRING,STRING)%sudara_perempuan memiliki fungsi satuan yaitu nilai string
saudara_laki(STRING,STRING)%sudara_laki memiliki fungsi satuan yaitu nilai string
menikah(STRING,STRING)%menikah memiliki fungsi satuan yaitu nilai string
ayah(STRING ayah,STRING putra)%ayah memiliki dua nilai yang sama yaitu ayah dan putra memiliki nilai string
kakek(STRING kakek,STRING cucu)%kakek memiliki dua nilai yang sama yaitu kakek dan cucu memiliki nilai string
nondeterm ipar_perempuan(STRING,STRING)%disini ipar_perempuan memiliki nilai string dan memiliki lebih dari satu jawaban atau lebih dari satu solusi karena nondeterm
CLAUSES %disini berisi fakta dan kebenaran yang digunakan sebagai objeknya
putra("Ikhsan","Bentang"). %ikhsan putra dari bentang
saudara_perempuan("Dini","Dina").%dini adalah saudara_perempuan dari dina
saudara_laki("Adi","Lintang").%adi adalah saudara_laki lintang
menikah("Ikhsan","Dini").%ikhsan menikah dengan dini
menikah("Lintang","Surga").%lintang menikah dengan surga
ayah(A,B):-putra(B,A).%disini berisi ketentuan atau aturan fakta disini berisi A ayah B jika maka B putra dari A
kakek(A,B):-ayah(A,C), ayah(C,B). %A kakek B jika mmaka A ayah C dan C ayahnya B
ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).%A ipar_perempuan B jika maka A menikah dengan C dan C saudara_perempuan B
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).%A ipar_perempuan B jika maka A saudara_laki C dan C menikah dengan B
GOAL %disini berisi aturan yang akan digunakan untuk mencari hasil akhir yang akan di proses dari predicates dan clauses
ipar_perempuan("Ikhsan",X). %disini tujuan yang akan di cari adalah siapa adik ipar perempuan dari ikhsan