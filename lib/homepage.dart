import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage(this.name,);
  final String name;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome homepage"),
          leading: RaisedButton(
            color: Colors.blue,
            onPressed:(){ Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios_outlined)),
        ),
        body: Container(
          child: Text(widget.name,style: TextStyle(fontSize: 30),),
        ),
      ),

    );
  }
}
