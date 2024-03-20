import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              width: 100,
              height: 500,
              color: Colors.deepPurple[600],
            ),

            Container(
              width: 100,
              height: 500,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 100,
              height: 500,
              color: Colors.deepPurple[200],
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 500,
                color: Colors.deepPurple[100],
              ),
            )
          ],
        ),
      ),
    );
  }
}

