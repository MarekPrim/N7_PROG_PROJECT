-- XXXX
package body interversexec is

  --procedure open(File : in out file_type ;
  --             Mode : in File_Mode := Out_File ;
  --             Name : in string) ;--*

   procedure intermediaire2execution(code_intermediaire : in File_Type) is
   begin
        blocDeclaration(code_intermediaire);
        blocPrincipal(code_intermediaire);
   end intermediaire2execution;

   procedure blocDeclaration(code_intermediaire : in File_Type) is

     tab_cell_entier : Tableau_Cellule;
     tab_entier : T_Variables := ("entier",tab_cell_entier);

   begin

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

    procedure tantQue is

    begin -- tantQue

      null;

    end tantQue;

end interversexec;
