import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String expresion = "";
  // List<String> temp = [];

  Widget customButton(String value) {
    return Expanded(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Colors.black26),
        ),
        padding: EdgeInsets.all(22),
        onPressed: value == "C" || value == "="
            ? () {
                value == "C"
                    ? setState(() {
                        expresion = "";
                      })
                    : setState(() {
                        expresion = int.tryParse(expresion).toString();
                      });
              }
            : () {
                setState(() {
                  expresion = expresion + value.toString();
                });
              },
        child: Text(
          value,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black26, width: 1),
                  ),
                ),
                alignment: Alignment.topRight,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  expresion == "" ? "0" : "$expresion",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                customButton("7"),
                customButton("8"),
                customButton("9"),
                customButton("+"),
              ],
            ),
            Row(
              children: [
                customButton("4"),
                customButton("5"),
                customButton("6"),
                customButton("-"),
              ],
            ),
            Row(
              children: [
                customButton("1"),
                customButton("2"),
                customButton("3"),
                customButton("*"),
              ],
            ),
            Row(
              children: [
                customButton("C"),
                customButton("0"),
                customButton("="),
                customButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
