import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/button_purple.dart';

class  DescriptionPlace extends StatelessWidget{

  String namePlace;
  int star ;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.star,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final halfStar =  Container(
      margin: EdgeInsets.only(
          top: 323.0,
          bottom: 0,
          right: 3.0,
          left: 0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final borderStar =  Container(
      margin: EdgeInsets.only(
          top: 323.0,
          bottom: 0,
          right: 3.0,
          left: 0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );


    final star = Container(
       margin: EdgeInsets.only(
         top: 323.0,
         bottom: 0,
         right: 3.0,
         left: 0
       ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );


    final title_stars = Row(
     children: <Widget>[
       Container(
         margin: EdgeInsets.only(
           top: 320,
           left: 20,
           right: 20
         ),
       child: Text(
         namePlace,
         style: TextStyle(
           fontSize: 30,
           fontFamily: 'Lato'
         ),
       ),
       )
     ],
    );

    final description = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey
        ),
      ),
    );


    final description_place = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple("Navigate")
      ],
    );


    return description_place;
  }


}