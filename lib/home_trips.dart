import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/header_appbar.dart';
import 'package:proyecto_platzi_flutter/description_place.dart';
import 'package:proyecto_platzi_flutter/review_list.dart';

class HomeTrips extends StatelessWidget{
  final String description = 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años' ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Julio Martinez",4,description),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}