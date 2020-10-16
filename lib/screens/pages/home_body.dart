import 'package:adams_app_v_1_0/components/customized_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/screens/pages/property_account_history.dart';


import 'account_audit_page.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.indigo[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome to', textScaleFactor: 1.2 ,style: TextStyle(fontSize: 20,letterSpacing: 1, fontWeight: FontWeight.w600, color: Colors.white),), //Apcol Data Management System
          Text('ADAMS',textScaleFactor: 2, style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold, color: Colors.white),), //Apcol Data Management System
          Text('APCOL Data\nManagement System', textAlign: TextAlign.center, textScaleFactor: 1,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),), //Apcol Data Management System
          SizedBox(height: 100,),
          Row(
            children: [
              CustomizedTile(
                title: 'View Property List',
                pageDestination: PropertyAccountHistory(),
              ),
              CustomizedTile(
                title: 'View Account Audit',
                pageDestination: LandlordProfilePage(),
              )
            ],
          ),
          RaisedButton(
              child: Text('Go To Website'),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => PropertyAccountHistory()
                ));
              }),

        ],
      ),
    );
  }
}
