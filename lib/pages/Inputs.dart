import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Fields"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter First Name",
                    contentPadding: EdgeInsets.only(bottom: 10),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Second Name",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(15),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
