-- XXXX
package body interversexec is

<<<<<<< HEAD
   procedure intermediaire2execution(code_intermediaire : in String) is
=======
  -- Packages de généricité (pour tableaux)
  --  package entiers is new interversexec(Element=> Integer,image => Integer'Image);
  --  use entiers;

  --  package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
  --  use booleens;
  --Fin packages de généricité (pour tableaux)

   procedure intermediaire2execution(code_intermediaire : in File_Type; un : in Element; deux : in Element) is
>>>>>>> 4c3412993fe0b08cf4434755f2f1b85a9501e036
   begin
        creer_tableaux_vides;
        blocDeclaration(code_intermediaire);
        blocPrincipal(code_intermediaire);
   end intermediaire2execution;

<<<<<<< HEAD
   procedure blocDeclaration(code_intermediaire : in String) is

     File : File_type;

     -----FILE------
     F,B : positive ;
     L,C : natural ;
     I,A : natural := 1;
     S : String(1..100);
     R : String(1..100);
     TYP : Unbounded_String;
     LENGTH : natural;
     --Type Tableau_Chaine is array(1..2) of String(100);
     --n : integer := 1 ;
     var : integer;
     casetab : integer := 1;
     Var_Entier : array(1..100) of Unbounded_String;
     Var_Booleen : array(1..100) of Unbounded_String;

     Virgule : constant Character_Set := To_Set (',');
     DeuxPoints : constant Character_Set := To_Set (':');

   begin
     Open(File,In_File,code_intermediaire); --Ouvre le fichier sous le nom "File"
     while not End_Of_File(File) loop --Parcours le fichier tant que l'on ne voit pas la fin
       if End_Of_Line(File) then --Test si c'est la fin de la ligne
         Skip_Line(File);
       else
         get_line(File,S,LENGTH);
         SuprEspace(S,LENGTH);
         while I in 1..LENGTH loop
           Find_Token
             (Source  => S(1..LENGTH),
              Set     => DeuxPoints,
              From    => I,
              Test    => Outside,
              First   => F,
              Last    => L);

              if var=1 then
               TYP := To_Unbounded_String(S (F .. L));
               put_line(To_String(TYP));
              end if;
              var := 1;

           exit when L = 0;
           I := L + 1;
         end loop;

         while A in 1..(F-2) loop
           Find_Token
             (Source  => S(1..F-2),
             Set     => Virgule,
             From    => A,
             Test    => Outside,
             First   => B,
             Last    => C);

           if To_String(TYP) = "Entier" then
             Var_Entier(casetab) := To_Unbounded_String(S (B .. C));
             casetab := casetab + 1;
           elsif To_String(TYP) = "Booléen" then
             Var_Booleen(casetab) := To_Unbounded_String(S (B .. C));
             casetab := casetab + 1;
           else
             put("Erreur : Type Incorrect");
           end if;

           exit when C = 0;
           A := C + 1;
          end loop;
       end if;
     end loop;
     Close(File);  -- fermeture du fichier
=======
   procedure creer_tableaux_vides is

   begin
    null;
   end creer_tableaux_vides;

   procedure blocDeclaration(code_intermediaire : in File_Type) is

     --My_file : File ;

   begin
     --tab_cell_entier : Tableau_Cellule;
     --tab_entier : T_Variables := ("entier",tab_cell_entier);
   -- Open(File,In_File,"./test_files/test_01_file");
   --            -- on ouvre le fichier de nom truc.txt
   --            -- dans le programme on l'appelle File
   --  while not End_Of_File(File) loop
   --     if End_Of_Line(File) then
   --        Get(F,C); -- on lit un caractere dans File
   --        New_Line;
   --     else
   --        Get(F,C); -- on lit un caractere dans File
   --        Put(C);   -- on affiche c a l'ecran
   --     end if;
   --  end loop;
   --Close(F);  -- fermeture de f
    null;
>>>>>>> 4c3412993fe0b08cf4434755f2f1b85a9501e036
   end blocDeclaration;

    procedure blocPrincipal(code_intermediaire : in String) is
    begin
        null;
    end blocPrincipal;

    procedure affectation(ligne : in String) is

      a : String := ligne;

    begin -- affectation

      null;

    end affectation;

    procedure tantQue(code_intermediaire : in File_Type; ligne_debut : in integer) is

    begin -- tantQue

      null;

    end tantQue;

<<<<<<< HEAD
    procedure SuprEspace(Chaine : in out string ; Long : in out natural) is
      i : integer := 1;
    begin
      while i < Long loop
        if Chaine(i) = ' ' then
          Long := long - 1;
          for j in i..Long loop
            Chaine(j) := Chaine(j+1);
          end loop;
        else
          i := i + 1;
        end if;
      end loop;
    end SuprEspace;
=======
    procedure affichage is

    begin
      null;
    end affichage;

>>>>>>> 4c3412993fe0b08cf4434755f2f1b85a9501e036

end interversexec;
