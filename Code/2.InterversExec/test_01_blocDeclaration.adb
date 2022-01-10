-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_01_blocDeclaration is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)

    fichier_test : File_Type;

begin
Put_line("");
New_Line;

    -- fichier pour test
    Open (fichier_test, In_File,"./test_files/test_01_file");


    --***** test Tests de la procédure BlocDeclaration *****
    Put_Line ("Tests de la procédure blocDecaration via fichier test : ");
    New_Line;
    blocDeclaration(fichier_test);

    --***** Fin tests de la procédure BlocDeclaration ******


end test_01_blocDeclaration;
