import 'package:flutter/material.dart';



class NameProfile extends StatelessWidget{

  String name = 'Varuna Yasas';
  NameProfile(this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black38,
            fontSize: 22.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

}