-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec;
with genericite;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_01_affectation is

    fichier_test : File_Type;

begin

    -- Tests de programmes contenant des affectations (utilisation test_files 01 à 06)
    -- Ces tests valident le fonctionnement des procédures suivantes :
    --  intermediaire2execution
    --  creer_tableaux_vides
    --  blocDeclaration
    --  blocPrincipal
    --  affectation
    --  affichage

    -- Tests affectation d'entiers à des entiers (programme correct) :
    Open (fichier_test, In_File,"./test_files/test_01_file");

    Put_Line ("Tests affectation d'entiers à des entiers (programme correct) : ");   
    New_Line;
    -- Affichage des valeurs ici ?
    intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : pommes := 5 ET patates := 12

    Close (fichier_test);

    -- Tests affectation de string à un entier (programme incorrect) :
    Open (fichier_test, In_File,"./test_files/test_02_file");

    Put_Line ("Tests affectation de string à un entier (programme incorrect) : ");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : pommes := 5 ET patates := ERREUR

    Close (fichier_test);

    -- Tests affectation de true/false à un booléen (programme correct) :
    Open (fichier_test, In_File,"./test_files/test_03_file");

    Put_Line ("Tests affectation de true/false à un booléen (programme correct) :");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : bool1 := true ET bool2 := false

    Close (fichier_test);

    -- Tests affectation d'un entier à un booléen (programme incorrect) :
    Open (fichier_test, In_File,"./test_files/test_04_file");

    Put_Line ("Tests affectation d'un entier à un booléen (programme incorrect) :");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : bool1 := true ET bool2 := ERREUR

    Close (fichier_test);

    -- Tests affectation d'un entier à un entier, avec multiplication (programme correct) :
    Open (fichier_test, In_File,"./test_files/test_05_file");

    Put_Line ("Tests affectation d'un entier à un entier, avec multiplication (programme correct) :");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : patates := 8 ET pommes := 10

    Close (fichier_test);

    -- Tests affectation d'un entier à un entier, et booléén à un booléen (programme correct) :
    Open (fichier_test, In_File,"./test_files/test_06_file");

    Put_Line ("Tests affectation d'un entier à un entier, et booléén à un booléen (programme correct) :");   
    New_Line;
    intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : patates := 8 ET pommes := 2 ET vrai := true ET faux := false

    Close (fichier_test);


end test_01_affectation;
