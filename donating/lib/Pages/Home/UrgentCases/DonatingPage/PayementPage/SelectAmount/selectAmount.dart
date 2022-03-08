import 'package:donating/Style/style.dart';
import 'package:flutter/material.dart';

class SelectAmount extends StatelessWidget {
  const SelectAmount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> amount = ['100', '200', '300'];
    return Container(
        height: MediaQuery.of(context).size.height * 0.13,
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
            itemCount: amount.length, itemBuilder: (context, index) {
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,),
                          child: Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(" درهم ",
                                style: TextStyle(
                                color: mainColor,
                                fontSize: 15,
                                fontFamily: 'Khebrat'),),
                              Text( " " + amount[index],
                                style: TextStyle(
                                color: mainColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Khebrat'),),
                            ],
                          ),),
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