import 'package:flutter/material.dart';

class DesignAppBar extends StatelessWidget {

  String appBarName = 'Designers';

  DesignAppBar(this.appBarName);

  @override
  Widget build(BuildContext context) {
    appBarName = appBarName.toUpperCase();

    final iconAppBar = Container(
      height: 80,
      padding: EdgeInsets.only(
          top: 38.0,
          left: 20.0
      ),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Tap'),
          ));
        },
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );

    final designAppBar = Container(
      height: 80.0,
      padding: EdgeInsets.only(
          top: 24.0,
          right: 10.0
      ),
      child: Center(
        child: Text(
          appBarName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );

    final imageAppBar = Container(
      height: 89.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/AppBar.png'),
              fit: BoxFit.fill
          )
      ),
    );

    return Stack(
      children: <Widget>[
        imageAppBar,
        designAppBar,
        iconAppBar
      ],
    );
  }
}