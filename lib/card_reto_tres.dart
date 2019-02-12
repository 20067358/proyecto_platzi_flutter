import 'package:flutter/material.dart';

class CardRetoTres extends StatelessWidget{

  String photoImage = 'asset/img/people.jpg';
  String name = 'Varuna Yasas';
  String details = '1 Review 5 photos';
  String read = 'asset/img/people.jpg';

  CardRetoTres(this.photoImage,this.name,this.details,this.read);
  @override

  Widget build(BuildContext context) {
    // TODO: implement build


    final photo = Container(
      margin: EdgeInsets.only(
          top: 15,
          left: 15,
          bottom: 15
      ),
      height: 80,
      width: 80,
      child: CircleAvatar(
        radius: 32,
        backgroundImage: AssetImage(photoImage),
      )
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
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold
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
            color: Colors.black38
        ),
      ),

    );


    final description = Container(
      margin: EdgeInsets.only(
        left: 15
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInfo
        ],
      ),
    );

    final buttonNo = IconButton(
        icon: Icon(Icons.mail),
        color: Colors.white,
        onPressed: (){
        }
    );

    final designButton = Container(
      margin: EdgeInsets.only(
          right: 15.0,
          left: 95.0
      ),
      child: CircleAvatar(
        backgroundColor: Colors.redAccent,
        radius: 25.0,
        child: Container(
          child: buttonNo,
        ),
      ),
    );

    return Card(
      child: Row(
        children: <Widget>[
          photo,
          description,
          designButton
        ],
      ),
    );
  }

}