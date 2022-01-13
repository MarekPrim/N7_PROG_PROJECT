-- XXXX
WITH ada.Text_IO ; USE ada.Text_IO ;
WITH ada.Integer_Text_IO ; USE ada.Integer_Text_IO ;
WITH Ada.Strings.Unbounded ; USE Ada.Strings.Unbounded ;
WITH Ada.Strings.Unbounded.Text_IO ; USE Ada.Strings.Unbounded.Text_IO ;
WITH Ada.Strings.Maps ; USE Ada.Strings.Maps ;
WITH Ada.Strings ; USE Ada.Strings ;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure test is

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

  File : File_type ;

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

------------TEST MANIPULATION FICHIER---------

  Open(File,In_File,"file.txt"); --Ouvre le fichier sous le nom "File"
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

  for i in 1..3 loop
    put_line(Var_Entier(i));
  end loop;


end test;
