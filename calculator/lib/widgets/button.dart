import 'package:flutter/material.dart';
import 'package:calculator/constants/app_colors.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function buttonPressed;
  final bool isOperator;

  const Button({required this.buttonText, required this.buttonPressed, this.isOperator = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: isOperator ? AppColors.operatorButtonTextColor : AppColors.buttonTextColor, backgroundColor: isOperator ? AppColors.operatorButtonColor : AppColors.buttonColor, padding: const EdgeInsets.all(24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => buttonPressed(buttonText),
        ),
      ),
    );
  }
}
