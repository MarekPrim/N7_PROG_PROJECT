-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with ada.Text_IO ; use ada.Text_IO;
with interVersExec ; use interVersExec;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure tests is
    -- Packages de généricité (pour tableaux)
    package entiers is new interversexec(Element=> Integer,image => Integer'Image);
    use entiers;

    package booleens is new interversexec(Element=> Boolean,image => Boolean'Image);
    use booleens;
    --Fin packages de généricité (pour tableaux)

    

begin

    Put_Line ("Coucou");


    --***** test affectation ******

    --affectation();

    --***** test TantQue *****

    --TantQue();

    --***** test BlocDeclaration *****

    --BlocDeclaration();

    --***** test BlocPrincipal *****

    --BlocPrincipal();

    --***** test intermediaire2execution *****





end tests;
