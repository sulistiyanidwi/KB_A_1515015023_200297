/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %tipe data yang digunakan disini adalah integer

predicates
  length_of(list,integer) - procedure (i,o) %disini sigunakan untuk menjelaskakn isi dari length_of dengan procedure input dan out

clauses
  length_of([], 0). %adalah eksekusi yang pertama kali di jalankan dengan kondisi ([],0). jika belum terpenuhi maka akan lanjut pada eksekusi selanjutnya
  length_of([_|T],L):- %selanjtnya di sini di masukkan head dan tailnya, dan nilai L yang nili awalnya masih 0 ,jika sudah ditemukan head dan tailnya maka akan lannjut pada eksekusi berikutnya
	length_of(T,TailLength), %setelah itu disini disimpan tail dari headnya dan taillength yang nilainya sama dengan L yaitu masih 0
		L = TailLength + 1. %kemudian L disni adalah taillength + 1. jika syarat pertama yaitu ength_of([], 0). belum terpenuhi makan akan terus berulang secara terurut dari awal ekseskusi lagi hingga hasilnya memenuhi syarat

goal
  length_of([1,2,3],L). %tujuan dari program yang di jalankan . disini program yang pertama kali di jalankan adalah goalnya
