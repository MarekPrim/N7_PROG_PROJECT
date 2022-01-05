-- PERRIN Camille, TP8 exo1
package interVersExec is
   
   --type liste is access Integer;
   Type T_AB is private;
   Vide : exception;

   --procedure intermediaire2execution
   --semantique: A partir d'un fichier en entree ecrit en code source, execute le programme sur la machine.
   --parametres: nom : code_intermediaire    type :  Fichier     flux : entree
   --pre-condition: aucune
   --post-condition: Le programme est execute sans erreur
   --exception: Fichier incoherent / Ne correspond pas a un fichier de type code intermediaire
   --           Fichier en entree vide
   procedure intermediaire2execution(code_intermediaire : in File_Type);

   private
      Type T_Noeud; 

end interVersExec;
