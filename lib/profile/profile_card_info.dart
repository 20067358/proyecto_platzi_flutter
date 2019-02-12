import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/general/email_profile.dart';
import 'package:proyecto_platzi_flutter/general/name_profile.dart';
import 'package:proyecto_platzi_flutter/general/photo_round.dart';

class ProfileCard extends StatelessWidget{

  String photoImage = 'asset/img/people.jpg';
  String name = 'Varuna Yasas';
  String email = '1 Review 5 photos';

  ProfileCard(this.photoImage,this.name,this.email);

  @override
  Widget build(BuildContext context) {

    final cardPhoto =Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 20
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(photoImage),
          )
      ),
    );

    final cardName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final cardEmail = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        cardName,
        cardEmail
      ],
    );


    // TODO: implement build
    return Row(
      children: <Widget>[
        cardPhoto,
        userDetails,
      ],
    );
  }

}