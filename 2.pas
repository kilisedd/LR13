program Text1;
var
  F: Text;
  i,j,N,K:integer;
  Name:String;
begin
 Write('Введите имя файла: ');
 Readln(Name);
 
 Write('Введите N строк: ');
 Readln(N);
 
 Write('Введите К символов: ');
 Readln(K);
 
 Assign(F,Name);
 ReWrite(F);{Rewrite перед открытием файла пересоздаёт его (удаляет, если он был создан ранее, и создаёт снова)}{процедура открытия создаваемого файла для записи в него информации; если файл с таким именем уже существует, то информация в нем стирается:}
 
 for i:=1 to N do
  begin
   for j:=1 to K do write(F,'*');
   if i<>N then Writeln(F);
  end;
 Close(F);
end.