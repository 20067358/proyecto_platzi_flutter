import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String photoImage = 'asset/img/people.jpg';
  String name = 'Varuna Yasas';
  String details = '1 Review 5 photos';
  String comment = 'This is a dummy comment';

  Review(this.photoImage,this.name,this.details,this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment =  Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );


    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),

    );

    final userName =  Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: 'Lato'
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
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

    // TODO: implement build
    return Row(
      children: <Widget>[
          photo,
          userDetails,

      ],
    );
  }


}