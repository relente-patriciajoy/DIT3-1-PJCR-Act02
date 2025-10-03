import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MultiHello',
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool _firstBuild = true;

  @override
  void initState() {
    super.initState();
    print("Screen1 -> onCreate");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Screen1 -> onStart");
  }

  @override
  Widget build(BuildContext context) {
    if (_firstBuild) {
      print("Screen1 -> onResume (first time build)");
      _firstBuild = false;
    } else {
      print("Screen1 -> onRestart (rebuild after coming back)");
    }

    return Scaffold(
      appBar: AppBar(title: Text("Screen 1")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          child: Text("Go to Screen 2"),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("Screen1 -> onPause / onStop / onDestroy");
    super.dispose();
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool _firstBuild = true;

  @override
  void initState() {
    super.initState();
    print("Screen2 -> onCreate");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Screen2 -> onStart");
  }

  @override
  Widget build(BuildContext context) {
    if (_firstBuild) {
      print("Screen2 -> onResume (first time build)");
      _firstBuild = false;
    } else {
      print("Screen2 -> onRestart (rebuild after coming back)");
    }

    return Scaffold(
      appBar: AppBar(title: Text("Screen 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Screen 2",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Screen 1"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("Screen2 -> onPause / onStop / onDestroy");
    super.dispose();
  }
}
