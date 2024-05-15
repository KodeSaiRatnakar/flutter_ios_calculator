import 'package:flutter/material.dart';
import 'package:flutter_ios_calculator/flutter_ios_calculator.dart';

void main() => runApp(const CalculatorTestApp());

class CalculatorTestApp extends StatelessWidget {
  const CalculatorTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: false,
      ),
      title: "Calculator Test",
      home: const Calculator(
        calculatorType: CalculatorType.ios12, //Defaults to CalculatorType.ios12
      ),
    );
  }
}
