-- XXXX
with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

generic
   type Tableau_Element is private; --Sera un tableau d'entiers ou de booleens
   with function image(Item : in Tableau_Element) return String; 

package interversexec is

   Type index is private;
   Type Tab_Entier is private;
   Type Tab_Booleens is private;

   -- Exceptions
   Vide : exception; 
   -- Fin exceptions

   --procedure intermediaire2execution
   --R1: Comment "Interpréter un code en langage intermédiaire" ?
   --semantique: A partir d'un fichier en entree ecrit en code source, execute le programme sur la machine.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: aucune
   --post-condition: Le programme est execute sans erreur
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure intermediaire2execution(code_intermediaire : in File_Type);

   --procedure declarationVariables (NOM A CHANGER)
   --R1.1: Traiter le bloc de déclaration des variables.
   --semantique: A partir d'un fichier en entree ecrit en code source, traite le bloc de déclaration des variables.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: XXXXXX
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure declarationVariables(code_intermediaire : in File_Type);

   --procedure blocPrincipal (NOM A CHANGER)
   --R1.2: Traiter le bloc principal du programme
   --semantique: A partir d'un fichier en entree ecrit en code source, traite le bloc principal du programme.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: Le programme est execute sans erreur
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure blocPrincipal(code_intermediaire : in File_Type);

   private
      -- Types de tableaux pour généricité
      Type Tab_Entier is array(1..100) of Integer; --Tableau de valeurs entières
      Type Tab_Booleens is array(1..100) of boolean; --Tableau de valeurs booleennes

      -- Le string "types" est le nom du type souhaité, soit une chaine de charactères
      type String is array(1..30) of Character;

      -- Rassemblement d'un tableau de valeurs avec le nom de son type
      Type T_Variables;
      type index is access T_Variables;
      type T_Variables is record
         types : String;
         tab : Tableau_Element;
      end record;

end interversexec;


--    -- SAVE RAFFINAGE
--    
--    R0: Interpréter un code en langage intermédiaire.
--    
--    R1: Comment "Interpréter un code en langage intermédiaire" ?
--    -- R1.1: Traiter le bloc de déclaration des variables.
--       |-- R2.1: Localiser la partie du code souhaitée.
--       |   | -- R3.1: Trouver la ligne Commençant par "Programme", quitter R1.1 lorsque l'on trouve la ligne "Début".
--       |   |
--       |-- R2.2: Traiter le code ligne par ligne.
--       |   |-- R3.1: Pour chaque ligne créer un tableau.
--       |   |   |-- R4.1: Séparer les variables
--       |   |   |    #Les variables seront renseignées dans un tableau à partir de la case 1
--       |   |
--       |   |   |-- R4.2: Interpréter le type de variable
--       |   |   |   #On mettra le type de la variable en case 0 du tableau
--    
--    
--    -- R1.2: Traiter le bloc principal du programme
--       |-- R2.1: Localiser la partie du code souhaitée.
--       |   |-- R3.1: Sauter la ligne début, s'arrếter lorsque l'on trouve "Fin".
--       |
--       |-- R2.2: Traiter le code ligne par ligne.
--       |   |-- R3.1: Mettre chaque éléments d'une ligne (séparés par un espace) dans un tableau.
--       |   |
--       |   |-- R3.2: Parcourir le tableau pour trouver l'action à effectuer dans cette ligne.
--       |   |
--       |   |-- R3.3: Effectuer l'action    