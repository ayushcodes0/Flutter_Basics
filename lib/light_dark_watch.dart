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

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkMode? Colors.grey[850] : Colors.grey[300],
        appBar: AppBar(
          backgroundColor: darkMode? Colors.grey[900] : Colors.grey[600],
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: darkMode? Center(child: Text('Dark Mode',style: TextStyle(color: darkMode? Colors.white : Colors.grey[200], fontWeight: FontWeight.w800),)) : Center(
            child: Text("Light Mode",
              style: TextStyle(color: darkMode? Colors.white : Colors.grey[200],
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Icon(Icons.access_alarm_sharp,size: 100,color: darkMode? Colors.white : Colors.black,),
                decoration: BoxDecoration(
                    color: darkMode? Colors.grey[850] : Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                        color: darkMode? Colors.black : Colors.grey,
                        offset: Offset(7.0,7.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: darkMode? Colors.white24 : Colors.white,
                        offset: Offset(-7.0,-7.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          darkMode = true;
                        });
                      }, child: Text("Dark",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          darkMode = false;
                        });
                      }, child: Text("Light",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )

    );
  }
}
