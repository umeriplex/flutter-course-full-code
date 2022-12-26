import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Test App',
            style: TextStyle(
                fontSize: 33,
                fontFamily: 'Pacifico',
                color: Colors.yellow,
                decoration: TextDecoration.lineThrough),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple,
                  child: const Center(child: Text("Row Cont 1")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.greenAccent,
                  child: const Center(child: Text("Row Cont 2")),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.green,
                      child: const Center(child: Text("Child Cont 1")),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.lightBlue,
                      child: const Center(child: Text("Child Cont 2")),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text("Cont 14")),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Center(child: Text("Cont 1")),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple,
                  child: const Center(child: Text("Row Cont 1")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.greenAccent,
                  child: const Center(child: Text("Row Cont 2")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text("Row Cont 4")),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: const Center(child: Text("Cont 1")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple,
                  child: const Center(child: Text("Row Cont 1")),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.greenAccent,
                  child: const Center(child: Text("Row Cont 2")),
                ),
                const Icon(
                  Icons.accessibility_new_rounded,
                  size: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
