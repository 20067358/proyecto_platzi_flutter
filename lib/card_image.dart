import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/floating_action_button_green.dart';

class CardImage extends StatelessWidget{

  String pathImage = 'assets/img/beach_palm.jpeg';
  @override

  CardImage(this.pathImage);

  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 350,
      width: 350,
      margin: EdgeInsets.only(
        top:80,
        left: 5.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
        borderRadius: BorderRadius.all( Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0,7.0)
          )
        ]

    ),
    );

    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
     // alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen()
      ],
    );
  }

}