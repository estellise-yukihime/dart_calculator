enum OperationEnum{
  addition(value: 1),
  subtraction(value: 2),
  multiplication(value: 3),
  division(value: 4);

  const OperationEnum({required this.value});

  final int value;
}