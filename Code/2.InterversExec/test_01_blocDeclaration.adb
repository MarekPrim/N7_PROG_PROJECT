-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec;

procedure test_01_blocDeclaration is

    fichier_test : File_Type;

begin
Put_line("");
New_Line;

    -- fichier pour test
    Open (fichier_test, In_File,"./test_files/test_01_file");


    --***** test Tests de la procédure BlocDeclaration *****
    Put_Line ("Tests de la procédure blocDecaration via fichier test : ");
    New_Line;

    --
    --blocDeclaration(fichier_test);

    --***** Fin tests de la procédure BlocDeclaration ******


end test_01_blocDeclaration;
