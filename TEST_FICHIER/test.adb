-- XXXX
WITH ada.Text_IO ; USE ada.Text_IO;
WITH ada.Integer_Text_IO ; USE ada.Integer_Text_IO;


procedure test is

  My_file : File_type ;
  a : string(1..50);
  b : Positive_Count;

begin

  Open(My_file,In_File,"file.txt") ;
  put(Get_Line(My_file));
  Set_Line(My_file,3);
  b := Line(My_file);
  New_line;
  put(Get_Line(My_file));
  Set_Line(My_file,3);
  New_line;
  put(Get_Line(My_file));
  Set_Line(My_file,b);
  New_line;
  put(Get_Line(My_file));



end test;
