-- XXXX
with genericite;

package body testc_interversexec is

  -- Packages de généricité (pour tableaux)
  package entiers is new genericite(Element=> Integer,image => Integer'Image);
  use entiers;

  package booleens is new genericite(Element=> Boolean,image => Boolean'Image);
  use booleens;
  --Fin packages de généricité (pour tableaux)

   procedure intermediaire2execution(code_intermediaire : in File_Type) is
      T : P_Cellule; 
   begin
      null;
        --creer_tableaux_vides;
        --blocDeclaration(code_intermediaire);
        --blocPrincipal(code_intermediaire);
   end intermediaire2execution;

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
   end blocDeclaration;

    procedure blocPrincipal(code_intermediaire : in File_Type) is
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

    procedure affichage is

    begin
      null;
    end affichage;


end testc_interversexec;
