-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_01_affectation is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)

    test_entiers : T_Variables;
    test_bool : T_Variables;
    pommes : integer;

begin

    --***** Tests de la procédure affectation ******
    Put_Line ("Tests de la procédure affectation : ");
    New_Line;

    -- Ce test ne vérifie pas la création de variables via déclaration, seulement leur affectation.
    -- On crée donc une variable d'entiers pour ce test :
    
    test_entiers := new T_Variables;
    test_entiers.all.types := "entier";
    test_entiers.all.tab := new Tableau_Cellule;
    test_entiers.all.tab := ("pommes" => 0);

    -- Affection d'un entier à un entier : REUSSITE ATTENDUE    
    Put_line("On affecte le nombre 5 à un entier nommé 'pommes' (pommes <- 5).");
    Put_line("L'affectation doit être réussie :");
    Put("Avant affectation, pommes vaut : ");
    pommes := test_entiers.all.tab("pommes"); --récupération de la valeur actuelle de "pommes"
    Put (pommes, 0);
    New_Line;
    interversexec.affectation("1 pommes <- 5");
    Put("Après affectation, pommes vaut : ");
    Put (pommes, 0);
    New_Line;
    New_Line;

    -- Affectation d'un string à un entier : ERREUR ATTENDUE
    Put_line("On affecte le string 'cinq' à un entier nommé 'pommes' (pommes <- 5).");
    Put_line("L'affectation doit être un échec : la nouvelle valeur n'est pas un entier :");
    Put("Avant affectation, pommes vaut : ");
    Put (pommes, 0);
    New_Line;
    interversexec.affectation("3 pommes <- cinq");
    Put("Après affectation, pommes vaut : ");
    Put (pommes, 0);
    New_Line;
    New_Line;

    -- Affection de true à un booléen : REUSSITE ATTENDUE    
    Put_line("On affecte 'true' à un booleen nommé 'pommes' (pommes <- 5).");
    Put_line("L'affectation doit être réussie :");
    Put("Avant affectation, pommes vaut : ");
    pommes := test_entiers.all.tab("pommes"); --récupération de la valeur actuelle de "pommes"
    Put (pommes, 0);
    New_Line;
    interversexec.affectation("1 pommes <- 5");
    Put("Après affectation, pommes vaut : ");
    Put (pommes, 0);
    New_Line;
    New_Line;

    -- Affectation d'un entier à un booléen : ERREUR ATTENDUE
    Put_line("On affecte le string 'cinq' à un entier nommé 'pommes' (pommes <- 5).");
    Put_line("L'affectation doit être un échec : la nouvelle valeur n'est pas un entier :");
    Put("Avant affectation, pommes vaut : ");
    --Put (pommes, 0);
    New_Line;
    --affectation("3 pommes <- cinq");
    Put("Après affectation, pommes vaut : ");
    --Put (pommes, 0);
    New_Line;
    New_Line;
    --***** Fin tests de la procédure affectation ******

end test_01_affectation;
