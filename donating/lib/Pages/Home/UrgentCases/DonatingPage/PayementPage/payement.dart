import 'package:donating/Pages/Home/UrgentCases/DonatingPage/PayementPage/PayementMethod/methodPayement.dart';
import 'package:donating/Pages/Home/UrgentCases/DonatingPage/PayementPage/SelectAmount/selectAmount.dart';
import 'package:donating/Style/style.dart';
import 'package:flutter/material.dart';

class Payement extends StatefulWidget {
  const Payement({ key }) : super(key: key);

  @override
  State<Payement> createState() => _PayementState();
}

class _PayementState extends State<Payement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("حدد المبلغ",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Khebrat'),),
          SizedBox(height: 15,),
          SelectAmount(),
          Text("طريقة الدفع",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Khebrat'),),
            SizedBox(height: 20,),
            MethodPayement(),
            SizedBox(height: 40,),
            FlatButton(
              minWidth: MediaQuery.of(context).size.width,
              height: 35,
              color: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),),
              onPressed: () {},
                child: Text("تبرع",
                style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Khebrat'),),),
        ],
      ),
    );
  }
}

