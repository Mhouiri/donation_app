import 'package:donating/Pages/Home/UrgentCases/DonatingPage/PayementPage/payement.dart';
import 'package:donating/Style/style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

int indice = 1;

class DonatingPage extends StatefulWidget {
  const DonatingPage({key }) : super(key: key);

  @override
  State<DonatingPage> createState() => _DonatingPageState();
}

class _DonatingPageState extends State<DonatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
           decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/kids.jpeg'),
              fit: BoxFit.cover)),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/kids.jpeg'),
                    fit: BoxFit.cover)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Center(child: Text("")),
              ),
               Container(
                 padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: bgColor),
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height * 0.66,
                child: Column(
                  children: [
                     GestureDetector(
                           onTap: (){
                             setState(() {
                               if (indice == 0)
                                indice = 1;
                             });
                           },
                           child: Container(
                             padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 1.4 ),
                             width: MediaQuery.of(context).size.width,
                            //  color: Colors.red,
                             child: indice == 1 ? null :Image.asset('assets/arrow.png', height: 30, width: 30, color: mainColor,)),
                         ),
                    Center(child: indice == 0 ? Payement() : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                         Text("قضاء دين",
                          style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Khebrat'
                        ), textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CaseInfos(title: "المبلغ المطلوب", value: "12500 Dh", image: "assets/target.png",),
                            CaseInfos(title: "المبلغ المجموع", value: "5000 Dh", image: "assets/clock.png",),
                          ],
                        ),
                        SizedBox(height: 15,),
                        LinearPercentIndicator(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          animation: true,
                          lineHeight: 7.0,
                          animationDuration: 1400,
                          percent: (10.20 * 100 / 22) / 100,
                          progressColor: mainColor,
                        ),
                        SizedBox(height: 20,),

                        Text(".اربك تكست هو اول موقع يسمح لزواره الكرام بتحويل الكتابة العربي الى كتابة مفهومة من قبل اغلب برامج التصميم مثل الفوتوشوب و الافترايفكتس و البريميرة.اربك تكست هو اول موقع يسمح لزواره الكرام بتحويل الكتابة العربي الى كتابة  .اربك تكست هو اول موقع يسمح لزواره الكرام بتحويل الكتابة العربي الى كتابة مفهومة من قبل اغلب برامج التصميم مثل الفوتوشوب و الافترايفكتس و البريميرة مفهومة من قبل اغلب برامج التصميم مثل الفوتوشوب و الافترايفكتس و البريميرة",
                          style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Khebrat'
                        ), textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 20,),
                        FlatButton(
                          minWidth: MediaQuery.of(context).size.width,
                          height: 35,
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),),
                          onPressed: () {
                            setState(() {
                              indice = 0;
                            });
                          },
                          child: Text("تبرع",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Khebrat'),),
                        ),
                      ],
                    )
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
    );
  }
}

class CaseInfos extends StatelessWidget {
  final String value;
  final String title;
  final String image;
  const CaseInfos({
    Key key, this.value, this.title, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor),
      child: Center(
        child: Row(
          children: [
            Image.asset(image, height: 30, width: 30, color: mainColor,),
            SizedBox(width: 5,),
            Column(
              children: [
                Container(
                  child: Text(value, style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontFamily: 'Khebrat')),
                ),
                Container(
                    child: Text( title, style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 10,
                      fontFamily: 'Khebrat'
                      // )
                      ),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}