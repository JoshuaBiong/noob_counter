import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Noob Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isChange = false;

// functions +
  void _incrementCounter() {
    _counter == -1;
    if (_counter >= 10) {
      isChange = true;
    }
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
      isChange = false;
    });
  }

  void _decreament() {
    if (_counter == 1) {
      isChange = false;
    } else {
      isChange = true;
    }
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              isChange ? 'YOURE EXCEEDING TO 10' : 'START THE COUNTING',
              style: TextStyle(color: isChange ? Colors.red : Colors.black),
            ),
            Text(
              "$_counter",
              style: TextStyle(
                  fontSize: 60, color: isChange ? Colors.red : Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: _decreament,
                  child: const Text('-'),
                ),
                FloatingActionButton(
                  onPressed: _reset,
                  child: const Text(
                    'RESET',
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: isChange ? Colors.red[900] : Colors.blue,
                  onPressed: _incrementCounter,
                  child: const Text('+'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
