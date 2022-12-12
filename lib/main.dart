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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    if (_counter == 10) {
      _counter = -1;
      isChange = false;
    } else if (_counter == -1) {
      isChange = false;
    } else {
      isChange = true;
    }

    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      isChange = false;
      _counter = 0;
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'START THE COUNTING',
            ),
            Text(
              "$_counter",
              style: const TextStyle(fontSize: 60),
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
                  child: const Text('RESET'),
                ),
                FloatingActionButton(
                  backgroundColor: isChange ? Colors.amber : Colors.blue,
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
