import 'dart:io';

void main(){
  for(int i=0;i<=5;i++){
    print("Выберите задание");
    int task = int.tryParse(stdin.readLineSync()!)??0;
    switch(task){
      case 0: print("Выход из программы."); return;
      case 1: print("Напишите программу, которая запрашивает у пользователя начало и конец диапазона целых чисел, а затем использует цикл for для подсчета суммы всех чисел в этом диапазоне.");getSum();break;
      case 2: print("Запросите у пользователя год и определите, является ли он високосным с использованием конструкции if else и цикла.");leapYear();break;
      case 3: print("Запросите у пользователя два числа и найдите их наименьшее общее кратное с использованием цикла и конструкции if else.");nok();break;
      case 4: print("Попросите пользователя ввести целое число, а затем используйте цикл и конструкцию if else для подсчета суммы его цифр.");sumNumbers();break;
      case 5: print("Запросите у пользователя слово или фразу и определите, является ли оно палиндромом (читается одинаково с начала и с конца) с использованием цикла и конструкции if else. ");isPolindrom();break;
      default:
        print("Ошибка: Введите цифру от 0 до 5 для выбора задания.");
        break;
    }
  }
}

void getSum(){
  print("Введите первое число:");
  int startNum = int.tryParse(stdin.readLineSync()!)??0;
  print("Введите второе число:");
  int endNum = int.tryParse(stdin.readLineSync()!)??0;
  int sum=0;
  for(int i=startNum;i<=endNum;i++){
    sum+=i;

  }
  print("Сумма чисел в диопазоне от $startNum до $endNum (включительно) равна $sum");
}

void leapYear(){
  print("Введите начало года:");
  int firstYear = int.tryParse(stdin.readLineSync()!)??0;
    if(firstYear%4==0){
      print("Год високосный");
    }else{
      print("Год не високосный");
    }
  
}

void nok(){
  print("Введите первое число:");
  int firstNum = int.tryParse(stdin.readLineSync()!)??0;
  print("Введите второе число:");
  int secondtNum = int.tryParse(stdin.readLineSync()!)??0;
  int largerNum = (firstNum>secondtNum)?firstNum:secondtNum;
  int sum =0;
  for(int i=largerNum;;i++){
    if(i%firstNum==0 && i%secondtNum==0){
      sum=i;
      break;

    }
  }
  print("Наименьшее общее кратное:$sum");
}


void sumNumbers(){
  print("Введите целое число: ");
String num = stdin.readLineSync()??"";
int sum=0;
if (num.length < 2) {
    print("Ошибка: Введена только одна цифра. Сумму невозможно вычислить.");
    return;
  }
for(int i=0;i<num.length;i++){
  int parsedNum=int.tryParse(num[i])??0;
  sum+=parsedNum;
} 
print("Сумма введенных цифр равна $sum");
}

void isPolindrom(){
  print("Введите слово:");
  String stroka=stdin.readLineSync()??"";
  // ignore: unrelated_type_equality_checks
  if (int.tryParse(stroka) != null) {
    print("Ошибка: Введите слово, а не число.");
    return;
  }

  List strokaList = stroka.split("");
  List reversed = strokaList.reversed.toList();
  bool polindrom = false;
  for(int i=0;i<strokaList.length;i++){
    if(strokaList[i]==reversed[i]){
      polindrom= true;
    }else{
      polindrom= false;
      break;
    }
  }
  print(polindrom);
}