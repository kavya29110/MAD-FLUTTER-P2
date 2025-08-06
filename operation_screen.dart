import 'package:flutter/material.dart';
import 'dart:math';

class OperationScreen extends StatefulWidget {
  final String operation;

  OperationScreen({required this.operation});

  @override
  _OperationScreenState createState() => _OperationScreenState();
}

class _OperationScreenState extends State<OperationScreen> {
  late int num1;
  late int num2;
  late int answer;
  String symbol = "";
  String result = "";

  @override
  void initState() {
    super.initState();
    generateQuestion();
  }

  void generateQuestion() {
    Random rand = Random();
    num1 = rand.nextInt(10) + 1;
    num2 = rand.nextInt(10) + 1;
    switch (widget.operation) {
      case "add":
        answer = num1 + num2;
        symbol = "+";
        break;
      case "subtract":
        answer = num1 - num2;
        symbol = "-";
        break;
      case "multiply":
        answer = num1 * num2;
        symbol = "×";
        break;
      case "divide":
        answer = num1;
        num2 = num1 * (rand.nextInt(5) + 1);
        symbol = "÷";
        break;
    }
  }

  void checkAnswer(String input) {
    if (int.tryParse(input) == answer) {
      setState(() {
        result = "Correct!";
      });
    } else {
      setState(() {
        result = "Try Again!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practice ${widget.operation}")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$num2 $symbol $num1 = ?", style: TextStyle(fontSize: 32)),
            TextField(
              keyboardType: TextInputType.number,
              onSubmitted: checkAnswer,
              decoration: InputDecoration(labelText: "Your Answer"),
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 24, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
