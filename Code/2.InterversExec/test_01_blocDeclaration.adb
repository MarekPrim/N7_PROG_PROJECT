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

    -- Tests affectation d'entiers à des entiers (fichier correct) :
    Open (fichier_test, In_File,"./test_files/test_01_file");

    Put_Line ("Tests affectation d'entiers à des entiers (fichier correct) : ");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale

    Close (fichier_test);

    -- Tests affectation de string à un entier (fichier incorrect) :
    Open (fichier_test, In_File,"./test_files/test_02_file");

    Put_Line ("Tests affectation de string à un entier (fichier incorrect) : ");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale

    Close (fichier_test);

    -- Tests affectation de string à un entier (fichier incorrect) :
    Open (fichier_test, In_File,"./test_files/test_02_file");

    Put_Line ("Tests affectation de string à un entier (fichier incorrect) : ");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale

    Close (fichier_test);


end test_01_blocDeclaration;
