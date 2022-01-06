-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec ;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure test_tantque_02 is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)

    

begin
Put_line("");
New_Line;

    --***** Tests de la procédure TantQue *****
    New_Line;
    Put_Line ("Test de la procédure TantQue : ");
    New_Line;


    --TantQue;


    --***** Fin tests de la procédure affectation ******

end test_tantque_02;
