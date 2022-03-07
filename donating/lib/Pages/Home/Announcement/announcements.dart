import 'package:donating/Style/style.dart';
import 'package:flutter/material.dart';

class ScrollingAnnounc extends StatefulWidget {
  const ScrollingAnnounc({ key }) : super(key: key);

  @override
  _ScrollingAnnouncState createState() => _ScrollingAnnouncState();
}

class _ScrollingAnnouncState extends State<ScrollingAnnounc> {
  final List<int> numbers = [1];

  @override
  Widget build(BuildContext context) {
    return Container(

        height: MediaQuery.of(context).size.height * 0.2,
        child:  Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/ramadan.png'),
                  fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                  color: mainColor,),
                width: MediaQuery.of(context).size.width * 0.95,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.25 ),
                    child: Center(child: Text("افطار صائم\n كل يوم", style: TextStyle(fontFamily: 'Khebrat', color: Colors.white, fontSize: 36.0), textAlign: TextAlign.center,)),
                  ),
                ),
              )

      );
  }
}