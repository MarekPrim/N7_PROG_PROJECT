--with interVersExec;
WITH Ada.Strings.Unbounded ; USE Ada.Strings.Unbounded;
WITH Ada.Strings.Unbounded.Text_IO ; USE Ada.Strings.Unbounded.Text_IO;

generic
   type Element is private; --Sera des entiers ou des booleens
   with function image(Item : in Element) return String;
package genericite is

   Type Cellule;
   Type P_Cellule is access Cellule;
   type Cellule is record
      nom : Unbounded_String;
      valeur : Element;
   end record;
   Type Tableau_Variables is array(1..20) of P_Cellule;

end genericite;
---
