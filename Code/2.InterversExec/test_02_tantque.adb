-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec; use interVersExec;
--with genericite; use genericite;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_02_tantque is

    fichier_test : File_Type;

    Cel_entiers : entiers.P_Cellule;
    Cel_bool : booleens.P_Cellule;
    --ent : entiers.Tableau_Variables;

begin

    --Tests de programmes contenant des boucles TantQue (utilisation test_files 10 à 11)
    -- Ces tests valident le fonctionnement de toutes les procédures :
    --  intermediaire2execution
    --  creer_tableaux_vides
    --  blocDeclaration
    --  blocPrincipal
    --  affectation
    --  tantque
    --  affichage

    -- Tests d'un programme, boucle tant que (programme correct) :
    Open (fichier_test, In_File,"./test_files/test_10_file");

    Put_Line ("Tests d'un programme, boucle tant que (programme correct) : ");   
    New_Line;
    -- Affichage des valeurs ici ?
    intermediaire2execution(fichier_test, Cel_entiers, Cel_bool); --procédure principale
    -- Ce programme calcule la factorielle de 5!
    -- Résultat attendu : Fact := 120

    Close (fichier_test);

    -- Tests d'un programme, boucle tant que (programme incorrect) :
    Open (fichier_test, In_File,"./test_files/test_11_file");

    Put_Line ("Tests d'un programme, boucle tant que (programme incorrect) : ");   
    New_Line;
    --intermediaire2execution(fichier_test); --procédure principale
    -- Résultat attendu : ERREUR

    Close (fichier_test);

end test_02_tantque;
