Var
  s,s1,n: String;
  f,buf: Text;
BEGIN
Write('Введите имя файла: ');
Readln(n);
If FileExists(n) Then
begin
  Assign(f,n); {обеспечивает связь файловой переменной программы с реальным файлом на диске. Первым аргументом указывается переменная, вторым – адресное имя файла.}
  Reset(f);
  Assign(buf,'buf.txt');
  Rewrite(buf);{Rewrite перед открытием файла пересоздаёт его (удаляет, если он был создан ранее, и создаёт снова)}{процедура открытия создаваемого файла для записи в него информации; если файл с таким именем уже существует, то информация в нем стирается:}
  Write('Введите строку S: ');
  Readln(s);
  Writeln(buf,s);
  While not Eof(f) do
  begin
    Readln(f,s1);
    Writeln(buf,s1);
  end;
  Writeln(buf,s);
  Close(f);
  Close(buf);
  Erase(f);
  Rename(buf,n);
end
Else
Writeln('Файл не найден, или некорректная запись');
END.