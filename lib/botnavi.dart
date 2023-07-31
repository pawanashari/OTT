import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/movie.dart';
import 'package:ott/stream.dart';
import 'package:ott/tvshow.dart';
import 'feed.dart';
import 'two.dart';

class navi extends StatefulWidget {
  const navi({Key? key}) : super(key: key);

  @override
  State<navi> createState() => _naviState();
}
class _naviState extends State<navi> {

  int _index=0;
  final pages=[
    jai(),
    mov(),
    show(),
    stream(),
    feed(),
  ];
  void tap(index){
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        //selectedIconTheme:
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie,size: 30),label: "Movies"),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv,size: 30),label:"Tv shows"),
          BottomNavigationBarItem(icon: Icon(Icons.view_stream_rounded,size: 30),label: "Streaming"),
          BottomNavigationBarItem(icon: Icon(Icons.feed,size: 30),label: "Feed"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
