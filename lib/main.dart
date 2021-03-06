import 'package:counter/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SimpleCounter());
}

class SimpleCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: blue,
      ),
      home: HomeScreen(title: appName),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      backgroundColor: black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200.0,
                    child: Text(
                      '$_counter',
                      style: TextStyle(
                        fontSize: 75.0,
                        color: white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      child: const Text(
                        "+ = 1",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    onPressed: _resetCounter,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(22.0, 17.0, 22.0, 17.0),
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
