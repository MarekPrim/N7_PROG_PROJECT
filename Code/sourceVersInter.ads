-- XXXX
package sourceVersInter is
   
   --type liste is access Integer;
   Type T_AB is private;
   Vide : exception;

   --fonction source2intermediaire
   --semantique: A partir d'un fichier en entree ecrit en code source, creation d'un fichier en code intermediaire.
   --            Le code intermediare produit est la traduction du code source en entree.
   --param`etres: nom : code_source    type :  Fichier     flux : entree
   --type-retour: Fichier
   --pre-condition: aucune
   --post-condition: aucune
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code source
   --           Variables autres que type Entier ou Booleen
   --           Fichier en entree vide
   function source2intermediaire(code_source : in File_Type) return File_Type;

   private
      Type T_Noeud; 

end sourceVersInter;
