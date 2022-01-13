-- XXXX
--with genericite;

package body interversexec is

  -- Packages de généricité (pour tableaux)
  package entiers is new genericite(Element=> Integer,image => Integer'Image);
  use entiers;

  package booleens is new genericite(Element=> Boolean,image => Boolean'Image);
  use booleens;
  --Fin packages de généricité (pour tableaux)

  tableau_entiers : entiers.Tableau_Variables;
  tableau_bool : booleens.Tableau_Variables;

   procedure intermediaire2execution(code_intermediaire : in String) is
   begin
        creer_tableaux_vides;
        blocDeclaration(code_intermediaire);
        blocPrincipal(code_intermediaire);
   end intermediaire2execution;

   procedure creer_tableaux_vides is
   begin
    for i in 1..20 loop
      tableau_entiers(i) := null;
      tableau_bool(i) := null;
    end loop;
   end creer_tableaux_vides;

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
     debut : string(1..5);

   begin
     Open(File,In_File,code_intermediaire); --Ouvre le fichier sous le nom "File"

     while To_String(get_line(File)) /= "Début" loop --Parcours le fichier tant que l'on ne voit pas la fin
       if End_Of_Line(File) then --Test si c'est la fin de la ligne
         Skip_Line(File);
       else
         get_line(File,S,LENGTH);
         put_line(S);
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
             put("test");
             put("Erreur : Type Incorrect");
             put("test----");
             New_Line;
           end if;

           exit when C = 0;
           A := C + 1;
          end loop;
       end if;
     end loop;
     Close(File);  -- fermeture du fichier

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

    procedure affichage is

    begin
      null;
    end affichage;


end interversexec;
