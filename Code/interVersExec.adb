-- XXXX
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with ada.Text_IO; use ada.Text_IO;

package body interVersExec is

   procedure intermediaire2execution(code_intermediaire : in File_Type) is
   begin
        declarationVariables(code_intermediaire);
        blocPrincipal(code_intermediaire);
   end intermediaire2execution;

   procedure declarationVariables(code_intermediaire : in File_Type) is
   begin
        null;
   end declarationVariables;

    procedure blocPrincipal(code_intermediaire : in File_Type) is
    begin
        null;
    end blocPrincipal;


end interVersExec;
