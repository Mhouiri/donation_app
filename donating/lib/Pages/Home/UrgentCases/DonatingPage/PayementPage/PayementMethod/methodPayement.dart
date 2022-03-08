import 'package:flutter/material.dart';

class MethodPayement extends StatefulWidget {
  const MethodPayement({key }) : super(key: key);

  @override
  State<MethodPayement> createState() => _MethodPayementState();
}

class _MethodPayementState extends State<MethodPayement> {
    final List<Map> methods = [{'name': 'بايبال', 'image': 'assets/paypal.png', 'comment': "Max US5000"}, {'name': 'بطاقة الائتمان', 'image': 'assets/mastercard.png', 'comment': "Credit/Debit"}, {'name': 'تحويل بنكي', 'image': 'assets/bank.png', 'comment': "Find the RIB"}];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
            itemCount: methods.length, itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
                width: MediaQuery.of(context).size.width * 0.41,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(methods[index]['name'], style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Khebrat')),
                ),
                Container(
                    child: Text(methods[index]['comment'], style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontFamily: 'Khebrat'
                      // )
                      ),
                  ),
                ),
              ],
            ),
            Image.asset(methods[index]['image'], height: 40, width: 40),
          ],
        )),
                  ),
                ),
              );
        }),
      );
  }
}