import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/screens/pages/account_audit_page.dart';


class ManagerRemittance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 75, vertical: 50),
      width: 330,
      height: 500,
      child:  Container(
        height: screenSize.height * 70,
        width: screenSize.width * 40,
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
                  'Manager',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.black),
                )
            ),
            Text(
              'Date',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'PAID TO APCOL',
              style: TextStyle(fontSize: 18),
            ),
            ManagerRowsCard(title: 'Account\nNumber', value: '0111122223',),
            ManagerRowsCard(title: 'Bank', value: 'First Bank',),
            ManagerRowsCard(title: 'Amount', value: 'N50,000',),
            ManagerRowsCard(title: 'Actual\nRent', value: 'N200,000',),
            ManagerRowsCard(title: 'Rent\nBalance', value: 'N150,000',),
          ],
        ),
      ),
    );
  }
}
