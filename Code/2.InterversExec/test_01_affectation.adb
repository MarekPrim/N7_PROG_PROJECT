-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_affectation_01 is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)

    

begin
Put_line("");
New_Line;


    --***** Tests de la procédure affectation ******
    Put_Line ("Tests de la procédure affectation : ");
    New_Line;

    -- Affection d'un entier à un entier : REUSSITE ATTENDUE
    -- ## ATTENTION, ce test doit prendre en compte qu'affectation vérifie l'existence de la variable (créer 'pommes' ?)
    Put_line("On affecte le nombre 5 à un entier nommé 'pommes' (pommes <- 5).");
    Put_line("L'affectation doit être réussie :");
    Put("Avant affectation, pommes vaut : ");
    --Put (pommes, 0);
    New_Line;
    --affectation("1 pommes <- 5");
    Put("Après affectation, pommes vaut : ");
    --Put (pommes, 0);
    New_Line;
    New_Line;

    -- Affectation d'un string à un entier : ERREUR ATTENDUE
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

end test_affectation_01;
