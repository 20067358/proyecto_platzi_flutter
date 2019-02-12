import 'package:flutter/material.dart';

class EmailProfile extends StatelessWidget{

  String email = 'kobe8323@hotmail.com';
  EmailProfile(this.email);

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
            fontFamily: 'Lato'
        ),
      ),
    );
  }


}