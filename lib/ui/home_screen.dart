import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var inputUser = '';
  var result = '';

  void ButtonPressed(String text) {
    setState(() {
      inputUser = inputUser + text;
    });
  }

  Widget Rowcal(String tex1, String text2, String text3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.zero,
            ),
          ),
          onPressed: () {
            ButtonPressed(tex1);
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 218, 233, 238),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                tex1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.zero,
            ),
          ),
          onPressed: () {
            ButtonPressed(text2);
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 218, 233, 238),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                text2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.zero,
            ),
          ),
          onPressed: () {
            ButtonPressed(text3);
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 218, 233, 238),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                text3,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget RowInContainer(String text1, String text2, String text3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.zero,
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromARGB(255, 218, 233, 238),
                )),
            onPressed: () {
              if (text1 == 'AC') {
                setState(() {
                  inputUser = '';
                  result = '0';
                });
              } else {
                ButtonPressed(text1);
              }
            },
            child: Text(
              text1,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.zero,
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromARGB(255, 218, 233, 238),
                )),
            onPressed: () {
              if (text2 == 'ce') {
                setState(() {
                  if (inputUser.length > 0) {
                    inputUser = inputUser.substring(0, inputUser.length - 1);
                  }
                });
              } else
                ButtonPressed(text1);
            },
            child: Text(
              text2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.zero,
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromARGB(255, 218, 233, 238),
                )),
            onPressed: () {
              ButtonPressed(text3);
            },
            child: Text(
              text3,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
      ],
    );
  }

  Widget ColumnInContainer(
      String text1, String text2, String text3, String text4, String text5) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 218, 233, 238),
              )),
          onPressed: () {
            ButtonPressed(text1);
          },
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                text1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
      ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 218, 233, 238),
              )),
          onPressed: () {
            ButtonPressed(text2);
          },
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                text2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
      ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 218, 233, 238),
              )),
          onPressed: () {
            ButtonPressed(text3);
          },
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                text3,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
      ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 218, 233, 238),
              )),
          onPressed: () {
            ButtonPressed(text4);
          },
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                text4,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
      ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 218, 233, 238),
              )),
          onPressed: () {
            if (text5 == '=') {
              Parser parser = Parser();
              Expression expression = parser.parse(inputUser);
              ContextModel contextModel = ContextModel();
              double eval =
                  expression.evaluate(EvaluationType.REAL, contextModel);
              setState(() {
                result = eval.toString();
              });
            } else {
              ButtonPressed(text5);
            }
          },
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                text5,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 196, 228, 230),
                    Color.fromARGB(255, 54, 161, 211),
                  ],
                  begin: FractionalOffset(1.0, 1.0),
                  end: FractionalOffset(0.0, 1.3),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        inputUser,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Color.fromARGB(122, 83, 85, 85),
                            fontSize: 25),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Color.fromARGB(255, 173, 197, 209),
                      width: double.infinity,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '=',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            result,
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 54, 161, 211),
                    Color.fromARGB(255, 196, 228, 230),
                  ],
                  begin: FractionalOffset(1.0, 1.0),
                  end: FractionalOffset(0.0, 1.3),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 218, 233, 238),
                                borderRadius: BorderRadius.circular(50)),
                            child: RowInContainer('AC', 'ce', '%')),
                        Container(
                          height: 300,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Rowcal('1', '2', '3'),
                              Rowcal('4', '5', '6'),
                              Rowcal('7', '8', '9'),
                              Rowcal('.', '0', '00'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: 50,
                      height: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 218, 233, 238),
                          borderRadius: BorderRadius.circular(50)),
                      child: ColumnInContainer('/', '*', '+', '-', '=')),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
