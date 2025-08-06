import 'package:flutter/material.dart';
import 'operation_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learn Basic Math")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MathButton(label: "Addition", operation: "add"),
            MathButton(label: "Subtraction", operation: "subtract"),
            MathButton(label: "Multiplication", operation: "multiply"),
            MathButton(label: "Division", operation: "divide"),
          ],
        ),
      ),
    );
  }
}

class MathButton extends StatelessWidget {
  final String label;
  final String operation;

  MathButton({required this.label, required this.operation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        child: Text(label),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OperationScreen(operation: operation),
            ),
          );
        },
      ),
    );
  }
}
