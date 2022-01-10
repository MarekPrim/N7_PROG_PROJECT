-- XXXX
WITH ada.Text_IO ; USE ada.Text_IO;
WITH ada.Integer_Text_IO ; USE ada.Integer_Text_IO;
with Ada.Strings.Unbounded ; use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO ; use Ada.Strings.Unbounded.Text_IO;
procedure test is

  My_file : File_type ;
  a : string(1..50);
  b : Positive_Count;
  --Type tab is array (1..100) of integer;
  --tableau1 : tab := ("pomme" => 1,
  --"patates" => 2);

  type Cellule;
  type P_Cellule is access Cellule;
  type Cellule is record
     nom : Unbounded_String;
     valeur : integer;
  end record;
  -- Un tableau de cellules contient toutes les variables d'un même type
  Type Tableau_Variables is array(1..100) of p_Cellule;

  TAB_VAR : Tableau_Variables;
  CEL1 : p_Cellule;

begin

  Open(My_file,In_File,"file.txt") ;
  put(ada.Text_IO.Get_Line(My_file));
  Set_Line(My_file,3);
  New_line;
  put(ada.Text_IO.Get_Line(My_file));
  New_line;

  CEL1 := new Cellule;
  CEL1.all.nom := To_Unbounded_String("pomme");
  CEL1.all.valeur := 2;

  TAB_VAR(1) := CEL1;

  put(TAB_VAR(1).all.nom);



end test;
