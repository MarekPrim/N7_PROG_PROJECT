-- PERRIN Camille, TP8 exo1
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with ada.Text_IO; use ada.Text_IO;

package body code is

   procedure intermediaire2execution(code_intermediaire : in File_Type) is
   begin
        declarationVariables(code_intermediaire);
        blocPrincipal(code_intermediaire);
   end intermediaire2execution;


end code;
