import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/gradient_back.dart';
import 'package:proyecto_platzi_flutter/card_image_list.dart';


class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],

    );
  }

}