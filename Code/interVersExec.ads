-- XXXX
generic
   type Tableau_Element is private;
   Type Tab_Entier is array(1..100) of Integer; --Cas valeurs entières
   Type Tab_Booleens is array(1..100) of boolean; --Cas de valeurs booleennes
   with function image(Item : in Tableau_Element) return String; 
package interVersExec is
   
   --type liste is access Integer;
   Type XXX is private;
   Vide : exception;

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
      Type Cellule;
      type liste is access Cellule;
      type Cellule is record
         type : String;
         tab : Tableau_Element;
      end record;

end interVersExec;
