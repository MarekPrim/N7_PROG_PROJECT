-- XXXX
WITH ada.Text_IO ; USE ada.Text_IO;
WITH ada.Integer_Text_IO ; USE ada.Integer_Text_IO;
WITH Ada.Strings.Unbounded ; USE Ada.Strings.Unbounded;
WITH Ada.Strings.Unbounded.Text_IO ; USE Ada.Strings.Unbounded.Text_IO;

generic
   type Element is private; --Sera des entiers ou des booleens
   with function image(Item : in Element) return String;

package interversexec is

   -- Type P_Cellule is access Cellule
   Type P_Cellule is private;

   -- Exceptions
   --Vide : exception;
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

   --procedure blocDeclaration
   --Comment R1 : R1.1: Traiter le bloc de déclaration des variables.
   --semantique: A partir d'un fichier en entree ecrit en code source, traite le bloc de déclaration des variables.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: XXXXXX
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure blocDeclaration(code_intermediaire : in File_Type);

   --procedure blocPrincipal
   --Comment R1 : R1.2: Traiter le bloc principal du programme
   --semantique: A partir d'un fichier en entree ecrit en code source, traite le bloc principal du programme.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: Le programme est execute sans erreur
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure blocPrincipal(code_intermediaire : in File_Type);

   --procedure affectation
   --Comment R1.2 : R2.1: Traiter l'affectation de données dans une variable
   --semantique: Affecter le changement de
   --parametres: nom : variable           type :  Element                  flux : entree/sortie
   --            nom : nouvelle_valeur    type :  Chaine de caractères     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: nouvelle_valeur est affecté à variable
   --exception: La nouvelle valeur ne correspond pas au type de la variable
   procedure affectation(ligne : in String);
   --procedure affection(variable : in out Element; nouvelle_valeur : in String);

   --procedure TantQue
   --Comment R1.2 : R2.2: Traiter une boucle Tant Que comprise dans le bloc principal
   --semantique: XXXXXXX
   --parametres: nom : XXXXXXX
   --pre-condition: XXXXXXX
   --post-condition: XXXXXXX
   --exception: XXXXXXX
   procedure tantQue;

   private
      Type Cellule;
      Type P_Cellule is access Cellule;
      type Cellule is record
<<<<<<< HEAD
         nom : Unbounded_String;
         --valeur : Element;
=======
         nom : string(1..30);
         valeur : Element;
>>>>>>> 00642ae77deb3205308d38eb4ce47af6c569bad4
      end record;

      Type Tableau_Variables is array(1..100) of P_Cellule;

end interversexec;
