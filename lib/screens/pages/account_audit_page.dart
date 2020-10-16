import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/components/landlord_details_form.dart';
import 'package:adams_app_v_1_0/components/manager_remittance.dart';
import 'package:adams_app_v_1_0/components/remittance_to_landlord.dart';

class LandlordProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      persistentFooterButtons: [
        Text('Dummy text'),
        Icon(Icons.accessible_forward),
        IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            } )
      ],
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 80,
          child: ListView(
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            children: [
              ManagerRemittance(),
              RemittanceLandlord(),
              LandlordDetailsForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ManagerRowsCard extends StatelessWidget {
  final String title;
  final String value;

  const ManagerRowsCard({Key key, this.title, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: defaultTileColor,
        borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
      child: Row(
        children: [
          Text('$title', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          Spacer(),
          Text('$value', style: TextStyle(fontSize: 24, color: Colors.white),),
        ],
      ),
    );
  }
}
