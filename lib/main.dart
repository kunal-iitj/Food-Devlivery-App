import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "services/login_field.dart";

void main() {
  runApp(const MaterialApp(
    title: 'Login Page',
    home: HomeScreen()
  )); 
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container( 
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container( 
            width: 400,
            height: 300,
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: <Widget>[
                Image.asset('images/flutter-logo.png', width: 50, height: 50,),
                LoginField(Icon(Icons.person), 'Username'), 
                LoginField(Icon(Icons.lock), 'Password'),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),

                  
                  child: TextButton(
                    onPressed: null, 
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0
                      ),)),
                ) 
              ]
            )
          ),
        ),
      )
    );
  }
}





