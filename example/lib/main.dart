import 'package:f4f_bottom_bar/f4f_bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // T
      bottomNavigationBar: F4FBottomBarWidget(
        sections: [
          const F4FBottomBarSection(title: 'Blog Post in Flutter 4 Fun', link: 'https://flutter4fun.com/ui-challenge-7'),
          const F4FBottomBarSection(title: 'Source Code', link: 'https://github.com/Flutter4Fun/UI-Challenge-7'),
          if (!kIsWeb)
            const F4FBottomBarSection(
              title: 'Live Demo',
              link: 'https://flutter4fun.github.io/UI-Challenge-7-Live/',
            ),
          const F4FBottomBarSection(title: 'fl_chart', link: 'https://pub.dev/packages/fl_chart'),
          const F4FBottomBarSection(title: 'Contribute', link: 'https://github.com/imaNNeoFighT/fl_chart/blob/master/CONTRIBUTING.md'),
          const F4FBottomBarSection(title: 'Donate', link: 'https://www.buymeacoffee.com/fl_chart'),
        ],
      ),
    );
  }
}

