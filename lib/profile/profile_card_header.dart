import 'package:flutter/material.dart';
import 'gradient_back_profile.dart';
import 'profile_card_info.dart';

class ProfileCardHeader extends StatelessWidget{

  Container generateBarIcon(IconData data, double sizeI, bool active){
    return Container(

      decoration: BoxDecoration(
        color: active ? Color(0xFFFFFFFF) : Color(0xAAFFFFFF),
        borderRadius: BorderRadius.circular(100.0),
      ),

      padding: EdgeInsets.all(
          5.0
      ),
      child:Icon(
        data,
        size: sizeI,
        color: Colors.purple,

      ),

    );

  }

  @override
  Widget build(BuildContext context) {


    final settings = Container(
      child:
      Icon(
        Icons.settings,
        color: Colors.blueGrey,
        size: 15,
      )
      ,
      margin: EdgeInsets.only(
        top: 15.0,
      ),
      padding: EdgeInsets.only(
        left: 200.0,
      ),
      alignment: Alignment(0.7, -0.85),
    );

    final avatar = CircleAvatar(
      child: CircleAvatar(
          backgroundImage: AssetImage("assets/img/people.jpg"),
        backgroundColor: Colors.white,
        radius: 30.0,),
      backgroundColor: Colors.white,
      radius: 32.0,
    );

    final userProfile = Row(
      children: <Widget>[
        avatar,
        Container(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Julio Joachin",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "link182.julio@gmail.com",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAAAAAA),

                ),

              ),
            ],
          )
          ,
          padding: EdgeInsets.only(
            left: 20.0,
          ),
        ),
      ],
    );


    final buttonBar = Container(
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          generateBarIcon(Icons.bookmark_border,20,true),
          generateBarIcon(Icons.card_giftcard,20,false),
          generateBarIcon(Icons.add,40,true),
          generateBarIcon(Icons.mail_outline,20,false),
          generateBarIcon(Icons.person,20,false),
        ],
      ),

    );

    final userOptions = Container(
      padding: EdgeInsets.only(
        top: 95.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: <Widget>[
          userProfile,
          buttonBar
        ],
      ),
    );

    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBackProfile("Profile"),
        settings,
        userOptions
      ],


    );
  }

}