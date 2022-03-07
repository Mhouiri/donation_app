import 'package:donating/Style/style.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({key }) : super(key: key);

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  final List<Map> numbers = [{'num': 1 , 'title': "طرود غذائية" , 'image' : "assets/grocerie.png"}, {'num': 2, 'title': "حفر بئر", 'image' : "assets/well.png"}, {'num': 3, 'title': "البر بالوالدين", 'image' : "assets/parents.png"}, {'num': 4, 'title': "علاج مريض", 'image' : "assets/sick.png"}, {'num': 4, 'title': "كفالة يتيم", 'image' : "assets/orphan.png"}, {'num': 4, 'title': "قضاء دين", 'image' : "assets/debt.png"}];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
            itemCount: numbers.length, itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Center(
                    child: Column(

                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                            color: Colors.white,),
                          child: Center(child: Image.asset(numbers[index]['image'], height: 70, width: 70,),),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                            color: mainColor,),
                          child:
                          Center(child: Text(numbers[index]['title'], style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: "Khebrat"))),
                        ),

                      ],
                    ),
                  ),
                ),
              );
        }),
      );
  }
}