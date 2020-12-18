import 'package:flutter/material.dart';

import 'main.dart';
class NewPasswordPage extends StatefulWidget {
  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 50,
                        child: CircleAvatar(
                          backgroundImage:AssetImage("img/sunil.jpg"),
                          radius: 48,
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter New Password',
                          hintText: 'Enter New password'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.remove_red_eye),
                          labelText: 'Confirm Password',
                          hintText: 'Confirm secure password'),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {

                        });
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => LoginDemo()));
                      },
                      child: Text(
                        'Click here',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),

                  ),
                ],
              ),
            ),

        ),
      ),
    );
  }
}
