--with interVersExec;

generic
   type Element is private; --Sera des entiers ou des booleens
   with function image(Item : in Element) return String;
package genericite is

    Type P_Cellule is private;

    private
        Type Cellule;
        Type P_Cellule is access Cellule;
        type Cellule is record
           nom : Unbounded_String;
           valeur : Element;
        end record;
        Type Tableau_Variables is array(1..100) of P_Cellule;

end genericite;