-- XXXX
package body interversexec is

   procedure intermediaire2execution(code_intermediaire : in File_Type) is
   begin
        declarationVariables(code_intermediaire);
        blocPrincipal(code_intermediaire);
   end intermediaire2execution;

   procedure declarationVariables(code_intermediaire : in File_Type) is

     tab_cell_entier : Tableau_Cellule;
     tab_entier : T_Variables := ("entier",tab_cell_entier);

   begin

     null;

   end declarationVariables;

    procedure blocPrincipal(code_intermediaire : in File_Type) is
    begin
        null;
    end blocPrincipal;

end interversexec;
