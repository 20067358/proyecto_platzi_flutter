import 'package:flutter/material.dart';
import 'package:proyecto_platzi_flutter/home_trips.dart';
import 'package:proyecto_platzi_flutter/profile_trips.dart';
import 'package:proyecto_platzi_flutter/search_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}
class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0;

  final List<Widget> widgetChildren =[
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
        body: widgetChildren[indexTap],
        bottomNavigationBar:Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child:
          BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
            ),
          ]),
        ) ,
    );
  }

}