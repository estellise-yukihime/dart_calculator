import 'dart:io';

import 'Operation/Computation.dart';
import 'Operation/OperationEnum.dart';

void main() {
  late bool play;

  do
  {
    print('*************');
    print('1. Calculator');
    print('2. Exit');

    final command = stdin.readLineSync();

    switch(command){
      case '1':
        play = true;
        calculator();
        break;
      case '2':
        play = false;
        break;
      default:
        play = false;
        break;
    }
  }
  while(play);
}

void calculator(){
  print('*************');
  print('Enter Symbol: ');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');
  print('5. Exit');

  final operation = Computation();

  final command = stdin.readLineSync();
  final symbol = int.tryParse(command!);

  late num result;

  if (symbol != null){
    print('Enter Number: ');

    final a = stdin.readLineSync();
    
    print('Enter Number: ');

    final b = stdin.readLineSync();

    final aNum = int.parse(a!);
    final bNum = int.parse(b!);

    switch(OperationEnum.values[symbol - 1]){
      case OperationEnum.addition:
        result = operation.Add(aNum, bNum);
        break;
      case OperationEnum.subtraction:
        result = operation.Minus(aNum, bNum);
        break;
      case OperationEnum.multiplication:
        result = operation.Multiply(aNum, bNum);
        break;
      case OperationEnum.division:
        result = operation.Divide(aNum, bNum);
        break;
      default:
        break;
    }

    print('Result: $result');
  }
}