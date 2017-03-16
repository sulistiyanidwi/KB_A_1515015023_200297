PREDICATES
     pria(String)
     wanita(String)
     usia(String,INTEGER)
     istri(String,STRING)
     nondeterm ibu(String,String)
     nondeterm kakek(String,String)
     nondeterm anak(String,String)
     nondeterm cucu(String,String)
     nondeterm adik(String,String)
    
CLAUSES
    
     anak (jhone,james).
     anak (james,peter).
     anak (sue,ann).
     istri (mary,peter).
     istri (ann,james).
     pria (jhon).
     pria (james).
     pria (peter).
     wanita (mary).
     wanita (sue).
     wanita (ann).
     usia (jhone, 10).
     usia (sue, 13).
    
     ibu(X,Y):-anak(Y,Z),istri(X,Z).
     kakek(X,Y):-anak(Y,Z),anak(Z,X). 
     cucu(X,Y):-anak(X,Z),anak(Z,Y).
     adik(X,Y):-usia(X,10),usia(Y,13).
     
    Goal
    ibu(mary,Siapa);
    kakek(peter,Siapa);
    cucu(jhone,Siapa);
    adik(jhone,Siapa). 