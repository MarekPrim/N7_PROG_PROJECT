-- XXXX
package interVersExec is
   
   --type liste is access Integer;
   Type XXX is private;
   Vide : exception;

   --procedure intermediaire2execution
   --semantique: A partir d'un fichier en entree ecrit en code source, execute le programme sur la machine.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: aucune
   --post-condition: Le programme est execute sans erreur
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure intermediaire2execution(code_intermediaire : in File_Type);

   --procedure declarationVariables (NOM A CHANGER)
   --semantique: A partir d'un fichier en entree ecrit en code source, traite le bloc de déclaration des variables.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: XXXXXX
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure declarationVariables(code_intermediaire : in File_Type);

      --procedure blocPrincipal (NOM A CHANGER)
   --semantique: A partir d'un fichier en entree ecrit en code source, traite le bloc principal du programme.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: XXXXXXX
   --post-condition: Le programme est execute sans erreur
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure blocPrincipal(code_intermediaire : in File_Type);

   private
      Type XXX; 

end interVersExec;
