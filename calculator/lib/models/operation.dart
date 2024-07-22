class Operation {
  double num1;
  double num2;
  String operand;

  Operation({required this.num1, required this.num2, required this.operand});

  double getResult() {
    switch (operand) {
      case "+":
        return num1 + num2;
      case "-":
        return num1 - num2;
      case "X":
        return num1 * num2;
      case "/":
        return num1 / num2;
      default:
        return 0.0;
    }
  }
}
