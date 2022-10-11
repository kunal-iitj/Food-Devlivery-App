import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "services/login_field.dart";

// done with this project 
// this is the last commit that would be made
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
        child: Stack(children: <Widget>[
          Align(
            widthFactor: 0.5,
            heightFactor: 0.5,
            alignment: Alignment.bottomRight,
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(200)),
              color: Colors.white.withOpacity(0.4),
              child: Container(
                width: 400,
                height: 400
              )
            ),
          ),
           Center(
            child: Container( 
              width: 270,
              height: 300,
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.center, 
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(  
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Please login to continue',
                      style: TextStyle(
                        color: Colors.grey[400]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LoginField(Icon(Icons.person), 'Username'),
                  ), 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LoginField(Icon(Icons.lock), 'Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                    ),
                  ) 
                ]
              )
            ),
          ),]
        ),
      )
    );
  }
}





