import 'package:flutter/material.dart';
import 'profile/profile_card_header.dart';
import 'profile/big_card_image.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            BigCardImage("assets/img/beach_palm.jpeg"),
            BigCardImage("assets/img/beach_palm.jpeg"),
            BigCardImage("assets/img/beach_palm.jpeg"),
          ],
        ),
      ProfileCardHeader()
      ],
    );
  }

}