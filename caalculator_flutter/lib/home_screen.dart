import 'package:flutter/material.dart';
import 'compunents/my_button.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.bottomRight,
                        color: Colors.grey.withOpacity(.2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                              userInput.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontFamily: 'Sans'),
                            ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomRight,
                        color: Colors.grey.withOpacity(.2),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18,0,18,18),
                          child: Text(
                              answer.toString(),
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Sans'),
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        MyButton(
                          num: 'AC',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput = '';
                              answer = "";
                            });
                          },
                        ),
                        MyButton(
                          num: '+/-',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '+/-';
                            });
                          },
                        ),
                        MyButton(
                          num: '%',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '%';
                            });
                          },
                        ),
                        MyButton(
                          num: '/',
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              userInput += '/';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          num: '7',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '7';
                            });
                          },
                        ),
                        MyButton(
                          num: '8',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '8';
                            });
                          },
                        ),
                        MyButton(
                          num: '0',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '0';
                            });
                          },
                        ),
                        MyButton(
                          num: 'x',
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              userInput += 'x';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          num: '4',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '4';
                            });
                          },
                        ),
                        MyButton(
                          num: '5',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '5';
                            });
                          },
                        ),
                        MyButton(
                          num: '6',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '6';
                            });
                          },
                        ),
                        MyButton(
                          num: '-',
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              userInput += '-';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          num: '1',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '1';
                            });
                          },
                        ),
                        MyButton(
                          num: '2',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '2';
                            });
                          },
                        ),
                        MyButton(
                          num: '3',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '3';
                            });
                          },
                        ),
                        MyButton(
                          num: '+',
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              userInput += '+';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          num: '0',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '0';
                            });
                          },
                        ),
                        MyButton(
                          num: '.',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput += '.';
                            });
                          },
                        ),
                        MyButton(
                          num: 'DEL',
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              userInput = userInput.substring(0,userInput.length-1);
                            });
                          },
                        ),
                        MyButton(
                          num: '=',
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              calRes();
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calRes() {
    String finalRes = userInput;
    finalRes = userInput.replaceAll('x', '*');
    Parser parser = Parser();
    Expression expression = parser.parse(finalRes);
    ContextModel contextModel = ContextModel();
    double cal = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = cal.toString();
  }
}
