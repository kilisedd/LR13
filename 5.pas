var input,output: text; k,i,max,min,a: integer; 
begin 
 Writeln('Введите количество чисел для записи в файл '5''); 
 readln(k); 
 assign(input,'D:\Колледж\Основы аллгоритм и программирования\LR-13\5.txt'); {обеспечивает связь файловой переменной программы с реальным файлом на диске. Первым аргументом указывается переменная, вторым – адресное имя файла.}
 assign(output,'D:\Колледж\Основы аллгоритм и программирования\LR-13\5.1.txt'); 
 rewrite(input); {процедура открытия создаваемого файла для записи в него информации; если файл с таким именем уже существует, то информация в нем стирается:}
 rewrite(output); 
 min:=100; max:=0; 
 for i:=1 to k do 
 begin 
 a:=random(1,100); {Вводятся рагдомные числа. Количество = К}
 writeln(input,a); 
 if a>max then 
 max:=a; 
 if a<min then 
 min:=a; 
 end; 
 writeln(output,min); 
 writeln(output,max); 
 close(input); 
 close(output); 
end.