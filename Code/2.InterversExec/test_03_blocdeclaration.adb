-- XXXX
with ada.Integer_Text_IO ; use ada.Integer_Text_IO ;
with ada.Text_IO ; use ada.Text_IO ;
with interversexec ; use interversexec;

procedure test_03_blocdeclaration is

    fichier_test : String := "test_files/testE";

begin



    Put_Line ("Tests affectation d'entiers à des entiers (programme correct) : ");
    New_Line;
    blocDeclaration(fichier_test);
    creer_tableaux_vides;


end test_03_blocdeclaration;
