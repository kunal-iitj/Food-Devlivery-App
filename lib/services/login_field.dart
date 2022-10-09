import "package:flutter/material.dart";

class LoginField extends StatelessWidget {
  Icon icon;
  String hintText;

  LoginField(this.icon, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
                  
                  width: 250,

                  child: Material(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.pinkAccent,
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: <Widget> [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: icon,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                          ),
                        width: 200,
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                          decoration: InputDecoration(
                            hintText: hintText,
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true
                          ),   
                          style: TextStyle(  
                            color: Colors.black,
                            fontSize: 20.0
                          )
                    ),
                        ),
                      )
                      ],
                    ),
                  ),
                ) 

;
  }
}