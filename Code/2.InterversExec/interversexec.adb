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

    -- On instancie tous les tableaux de variables génériques avec des valeurs nulles
    for i in 1..20 loop
      tableau_entiers(i) := null;
      tableau_bool(i) := null;
    end loop;

      -- On remet le compteur de variables à 0, pour chaque type
      --nombre_entiers := 0;
      --nombre_booleens := 0;

  end creer_tableaux_vides;







   procedure blocDeclaration(code_intermediaire : in String) is

     File : File_type;

     -----FILE------
     first_1, first_2 : positive ;
     last_1, last_2 : natural ;
     i_1, i_2 : natural := 1;
     ligne : String(1..100);
     var_type : Unbounded_String;
     longueur : natural;
     --Type Tableau_Chaine is array(1..2) of String(100);
     --n : integer := 1 ;
     variables : integer;
     case_tab : integer := 1;
     tableau_entiers : array(1..100) of Unbounded_String;
     tableau_bool : array(1..100) of Unbounded_String;

     virgule : constant Character_Set := To_Set (',');
     deuxPoints : constant Character_Set := To_Set (':');
     debut : string(1..5);

   begin
     Open(File,In_File,code_intermediaire); --Ouvre le fichier sous le nom "File"


     while To_String(get_line(File)) /= "Début" loop --Parcours le fichier tant que l'on ne voit pas la fin
       if End_Of_Line(File) then --Test si c'est la fin de la ligne
         Skip_Line(File);
       else
         get_line(File,ligne,longueur);
         SuprEspace(ligne,longueur);
         while i_1 in 1..longueur loop
            Find_Token
              (Source  => ligne(1..longueur),
              Set     => DeuxPoints,
              From    => i_1,
              Test    => Outside,
              First   => first_1,
              Last    => last_1);

            if variables=1 then
             var_type := To_Unbounded_String(ligne(first_1 .. last_1));
             put_line(To_String(var_type));
            end if;
            variables := 1;

           exit when last_1 = 0;
           i_1 := last_1 + 1;
         end loop;

         while i_2 in 1..(first_1-2) loop
           Find_Token
             (Source  => ligne(1..first_1-2),
             Set     => virgule,
             From    => i_2,
             Test    => Outside,
             First   => first_2,
             Last    => last_2);

           if To_String(var_type) = "Entier" then
             tableau_entiers(case_tab) := To_Unbounded_String(ligne(first_2 .. last_2));
             case_tab := case_tab + 1;
           elsif To_String(var_type) = "Booléen" then
             tableau_bool(casetab) := To_Unbounded_String(ligne(first_2 .. last_2));
             case_tab := case_tab + 1;
           else
             put("test");
             put("Erreur : Type Incorrect");
             put("test----");
             New_Line;
           end if;

           exit when last_2 = 0;
           i_2 := last_2 + 1;
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
