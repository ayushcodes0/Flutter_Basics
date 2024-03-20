import 'package:flutter/material.dart';
import 'package:flutter_basics/add_Images.dart';
void main(){
  runApp(new MyApp());
}
// stl likh ke enter maare hai jisse stateless aagaya hai.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Home Page",
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
    );
  }
}

// stf likh kar enter maare hai
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String mytext = "Hello World";
  void _changeText(){
    setState(() {
      if(mytext.startsWith('H')){
        mytext = "Welcome Ayush In This World";
      }else{
        mytext = "Hello World";
      }

    });
  }

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Text(mytext, style: new TextStyle(
              fontSize: 25.0,
            ),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        title: Center(
          child: new Text("Home Page" , style: new TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 25.0,
          ),),
        ),
      ),
      body: _bodyWidget() ,
      floatingActionButton: new FloatingActionButton(
        onPressed: _changeText,
        child: new Icon(Icons.add),
      ),
    );
  }
}

