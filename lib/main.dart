import 'package:flutter/material.dart';
import 'package:startingsetup/keys/keys.dart';
//hi

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        // body: UIUpdatesDemo(),
        body: const Keys(),
      ),
    );
  }
}
