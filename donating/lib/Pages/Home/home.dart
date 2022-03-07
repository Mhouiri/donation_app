import 'package:donating/Pages/Home/Activities/activities.dart';
import 'package:donating/Pages/Home/Announcement/announcements.dart';
import 'package:donating/Pages/Home/UrgentCases/urgentCases.dart';
import 'package:donating/Style/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   title: Center(child: Text('تصدق')),
      // ),
      body: SafeArea(
        child: Container(
          // color: Colors.green,
          margin: EdgeInsets.only(top: 10, right: 10, left: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 13),
                child: Text("الهدف الرئيسي" , style: TextStyle(fontSize: 20, fontFamily: "Khebrat", color: titleColor))),
              SizedBox(height: 10,),
              ScrollingAnnounc(),
              SizedBox(height: 10,),
              Container(
                child: Text("الانشطة" , style: TextStyle(fontSize: 20, fontFamily: "Khebrat", color: titleColor))),
              Activities(),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Text("الحالات المستعجلة" , style: TextStyle(fontSize: 20, fontFamily: "Khebrat" , color: titleColor),)),
              SizedBox(height: 10,),
              UrgentCases(),
            ],
          ),
        ),
      )
    );
  }
}