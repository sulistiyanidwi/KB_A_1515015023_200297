/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %tipe data yang digunakan disini adalah integer

predicates
  length_of(list,integer,integer) - procedure (i,o,i) %disini sigunakan untuk menjelaskakn isi dari length_of dengan procedure input, out, dan input

clauses
  length_of([], Result, Result). %adalah eksekusi yang pertama kali di jalankan dengan kondisi ([],result,result). jika belum terpenuhi maka akan lanjut pada eksekusi selanjutnya
  length_of([_|T],Result,Counter):- %selanjtnya di sini di masukkan head dan tailnya, dan nilai Result dan Counter yang nili awalnya masih 0,0 ,jika sudah ditemukan head dan tailnya maka akan lannjut pada eksekusi berikutnya
	NewCounter = Counter + 1, %setelah itu disini terdapat eksekusi newcounter disni masih bernilai 0, kemudian sama dengan conter +1, counter di sini masih sama dengan L di awal masih bernilai 0 + dengan 1. 
	length_of(T, Result, NewCounter). %kemudian disni adalah length_of yaitu adalah T yaitu tail dari hedanya dengan disertai result dan newcounter. 

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */ %tujuan dari program yang di jalankan . disini program yang pertama kali di jalankan adalah goalnya. belum terpenuhi makan akan terus berulang secara terurut dari awal ekseskusi lagi hingga hasilnya memenuhi syarat.