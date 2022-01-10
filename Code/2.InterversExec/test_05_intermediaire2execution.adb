-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_05_intermediaire2execution is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)
    
    test_entiers : P_Cellule;
begin
Put_line("");
New_Line;


    --***** test Tests de la procédure intermediaire2execution *****
    Put_Line ("Tests de la procédure intermediaire2execution : ");
    New_Line;

    --
    --intermediaire2execution();

    --***** Fin tests de la procédure intermediaire2execution ******

end test_05_intermediaire2execution;
