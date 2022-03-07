import 'package:donating/Style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class UrgentCases extends StatefulWidget {
  const UrgentCases({key }) : super(key: key);

  @override
  State<UrgentCases> createState() => _UrgentCasesState();
}

class _UrgentCasesState extends State<UrgentCases> {
  final List<Map> numbers = [{'colors': Color(0XFFFF8A56)}, {'colors': Color(0XFFFF8A56)}, {'colors': Color(0XFFFF8A56)}, {'colors': Color(0XFFFF8A56)}, {'colors': Color(0XFFFF8A56)}, {'colors': Color(0XFFFF8A56)}];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.26,
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
            itemCount: numbers.length, itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
                width: MediaQuery.of(context).size.width * 0.38,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    child: Center(child: Column(
                      children: [
                        Text(".اربك تكست هو اول موقع يسمح لزواره الكرام بتحويل الكتابة العربي الى كتابة مفهومة من قبل اغلب برامج التصميم مثل الفوتوشوب و الافترايفكتس و البريميرة",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Khebrat'
                        ),
                        textAlign: TextAlign.right,),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("5%",  style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Khebrat'
                        ),),
                            Text("1500 Dh" , style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Khebrat'
                        ),)
                          ],
                        ),
                           LinearPercentIndicator(
                            width: 125,
                            backgroundColor: Colors.black.withOpacity(0.2),
                            animation: true,
                            lineHeight: 7.0,
                            animationDuration: 1400,
                            percent: (10.20 * 100 / 22) / 100,
                            progressColor: mainColor,
                          ),
                          SizedBox(height: 5,),
                           FlatButton(
                          height: 30,
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/donate');
                          },
                          child: Text("تبرع",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Khebrat'
                        ),
                        ),
                        ),
                      ],
                    )),
                  ),
                ),
              );
        }),
      );
  }
}