-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec ;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_interversexec is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)

    

begin
Put_line("");
New_Line;


    --***** test affectation ******
    Put_Line ("Tests d'affectation : ");
    New_Line;

    -- ## ATTENTION, ce test doit prendre en compte qu'affectation vérifie l'existence de la variable (créer 'pommes' ?)
    Put_line("On affecte le nombre 5 à un entier nommé 'pommes' (pommes <- 5)");
    Put_line("L'affectation doit être réussie");
    affectation("pommes <- 5");
    New_Line;

    --***** test TantQue *****
    Put_Line ("Test d'affectation : ");
    --TantQue();

    --***** test BlocDeclaration *****

    --BlocDeclaration();

    --***** test BlocPrincipal *****

    --BlocPrincipal();

    --***** test intermediaire2execution *****





end test_interversexec;
