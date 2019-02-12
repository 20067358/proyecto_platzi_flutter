import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/card_reto_tres.dart';

class ListadoRetoTres extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 90
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardRetoTres("assets/img/people.jpg", "Wado Kandu", "1 Review 2 photos", "assets/img/people.jpg"),
          CardRetoTres("assets/img/ann.jpg", "Ann", "1 Review 3 photos", "assets/img/people.jpg"),
          CardRetoTres("assets/img/girl.jpg", "Girl#1", "1 Review 3 photos", "assets/img/people.jpg")
        ],
      ),
    );
  }

}