-- XXXX
package body interversexec is

   procedure intermediaire2execution(code_intermediaire : in File_Type) is
   begin
        declarationVariables(code_intermediaire);
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

    procedure affectation(ligne: in String) is

    begin -- affectation

      null;

    end affectation;

    procedure tantQue is

    begin -- tantQue

    end tantQue;

end interversexec;
