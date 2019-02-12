import 'package:flutter/material.dart';

class PhotoRound extends StatelessWidget{

  String photoImage = 'asset/img/people.jpg';
  PhotoRound(this.photoImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
  }

}