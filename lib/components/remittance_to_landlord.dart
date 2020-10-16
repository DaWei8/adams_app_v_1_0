import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/screens/pages/account_audit_page.dart';

class RemittanceLandlord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 75, vertical: 50),
      width: 350,
      height: 500,
      child:  Container(
        height: MediaQuery.of(context).size.height * 70,
        width: MediaQuery.of(context).size.width * 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
            color: Colors.black26,
            blurRadius: 30,
          )],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 40,
                padding: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                ),
                child: Text(
                  'Remittance',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.black),
                )
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                'Date',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Text(
              'PAID TO APCOL',
              style: TextStyle(fontSize: 18),
            ),
            ManagerRowsCard(title: 'Account\nNumber', value: '0111122223',),
            ManagerRowsCard(title: 'Bank', value: 'First Bank',),
            ManagerRowsCard(title: 'Amount', value: 'N50,000',),
          ],
        ),
      ),
    );
  }
}
