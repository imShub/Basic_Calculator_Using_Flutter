import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);

    setState(() {
      sum = num1 + num2;
    });
  }

  void doSubstraction() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);

    setState(() {
      sum = num1 - num2;
    });
  }

  void doMultiplication() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);

    setState(() {
      sum = num1 * num2;
    });
  }

  void doDivision() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);

    setState(() {
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "Output : $sum",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 8, 64, 110),
              ),
            ),
            new Padding(padding: EdgeInsets.only(bottom: 20.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2",
              ),
              controller: t2,
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  child: Text("+",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  color: Color.fromARGB(255, 135, 211, 223),
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: Text("-",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  color: Color.fromARGB(255, 135, 211, 223),
                  onPressed: doSubstraction,
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  child: Text(
                    "*",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Color.fromARGB(255, 135, 211, 223),
                  onPressed: doMultiplication,
                ),
                new MaterialButton(
                  child: Text("/",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  color: Color.fromARGB(255, 135, 211, 223),
                  onPressed: doDivision,
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new MaterialButton(
                  child: Text("Clear",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  color: Color.fromARGB(255, 135, 211, 223),
                  onPressed: doClear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
