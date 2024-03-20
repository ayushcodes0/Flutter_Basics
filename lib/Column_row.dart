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
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Hello Buttons"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('R1', style: TextStyle(fontSize: 30),),
                  Text('R2', style: TextStyle(fontSize: 30),),
                  Text('R3', style: TextStyle(fontSize: 30),),
                  Text('R4', style: TextStyle(fontSize: 30),),
                  Text('R5', style: TextStyle(fontSize: 30),),
                ]
              ),
              Text('A', style: TextStyle(fontSize: 30),),
              Text('B', style: TextStyle(fontSize: 30),),
              Text('C', style: TextStyle(fontSize: 30),),
              Text('D', style: TextStyle(fontSize: 30),),
              Text('E', style: TextStyle(fontSize: 30),),
              ElevatedButton(onPressed: (){

              },child: Text('Click'))
            ],
          ),
        )

    );
  }
}
