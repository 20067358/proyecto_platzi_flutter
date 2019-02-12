import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Review("assets/img/people.jpg", "Wado Kandu", "1 Review 2 photos", "soy un comentario"),
         Review("assets/img/ann.jpg", "Ann", "1 Review 3 photos", "soy un comentario"),
         Review("assets/img/girl.jpg", "Girl#1", "1 Review 3 photos", "soy un comentario")
      ],
    );
  }

}