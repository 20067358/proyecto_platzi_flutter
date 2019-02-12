import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }


}

class  _FloatingActionButtonGreen extends State <FloatingActionButtonGreen>{

  void onPrressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregando a mis favoritos"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true ,
      tooltip: "Fav",
      onPressed: onPrressedFav,
      child: Icon(
        Icons.favorite_border
      ),
    );
  }

}