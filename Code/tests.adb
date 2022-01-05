-- XXXX
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with ada.Text_IO; use ada.Text_IO;
with interVersExec; use interVersExec;
--with sourceVersInter; use sourceVersInter;
-- R0

procedure tests is
    package entiers is new exo1(Tableau_Element=> Tab_Entier,image => Tab_Entier'Image);
    use entiers;

    package booleens is new exo1(Tableau_Element=> Tab_Booleens,image => Tab_Booleens'Image);
    use booleens;

begin

end tests;