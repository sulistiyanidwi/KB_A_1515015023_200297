/*****************************************************************************
		
 Nama	: Dwi Sulistiyani
 NIM	: 1515015023
 Kelas 	: A2015
 
 ******************************************************************************/
predicates
  doraemon(symbol,symbol,integer,long) - nondeterm (o,o,o,i)
  harry_potter(symbol,symbol,integer,long) - nondeterm (o,o,o,i)
  
clauses
  doraemon(doraemon,komik,150,1500000).
  doraemon(doraemon,aksesoris,50,20000).
  doraemon(doraemon,stiker,200,50000).
   
  harry_potter(harry_potter,novel,150,2000000).
  harry_potter(harry_potter,aksesoris,50,20000).
  harry_potter(harry_potter,stiker,150,20000).
    
  

goal
  
	doraemon(Tema,Jenis,Banyaknya,20000);
	harry_potter(Tema,Jenis,Banyaknya,20000).
	