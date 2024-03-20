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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Using Box Shadow And Decorations",
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w800),
          ),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Icon(Icons.access_alarm_sharp,size: 100, color: Colors.white,),
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(5.0,5.0),
                    blurRadius: 15.0,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white24,
                    offset: Offset(-5.0,-5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ]
            ),
          ),
        )

    );
  }
}
