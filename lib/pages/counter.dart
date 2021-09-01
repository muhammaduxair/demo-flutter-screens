import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  onIncrease() {
    setState(() {
      count += 1;
    });
  }

  onDecrease() {
    setState(() {
      count > 0 ? count -= 1 : count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  count < 10 ? "0" + count.toString() : count.toString(),
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: onIncrease,
                    icon: Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: onDecrease,
                    icon: Icon(
                      Icons.remove,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
