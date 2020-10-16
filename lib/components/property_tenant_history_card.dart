import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/models/property_information.dart';
import 'package:adams_app_v_1_0/screens/pages/propertycode_page.dart';
import 'package:adams_app_v_1_0/screens/pages/rent_page.dart';
import 'package:adams_app_v_1_0/screens/pages/responsibility_page.dart';
import 'package:adams_app_v_1_0/screens/pages/tenant_page.dart';

//PTH-property tenant history
List pthTabs = [
  'Property Code',
  'Tenant',
  'Rent',
  'Responsibility',
  'Restriction',
];
//PTHPages - Property Tenant History Pages
List pthPages = [
  PropertyCodePage(),
  TenantPage(),
  RentPage(),
  ResponsibilityPage(),
];

List pthAccounts = [
  'ADM/589/AK/001',
  'ASM/236/BK/002',
  'AFM/683/CK/003',
  'ATM/453/TK/004',
  'AYM/623/SK/005',
  'AZM/423/DK/006',
  'DZM/423/DK/007',
  'VZM/423/DK/008',
  'SZM/423/DK/009',
  'AZM/423/DK/010',
  'RZM/423/DK/012',
  'WZM/423/DK/013',
];

class PropertyTenantHistoryCard extends StatelessWidget {
  final PropertyInfo propertyInfo;
  const PropertyTenantHistoryCard({
    Key key,
    this.propertyInfo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PropertyCodePage(
                      propertyInfo: propertyInfo,
                    )));
      },
      child: Container(
        height: 35,
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 5,
              )
            ]),
        child: Text(
          propertyInfo.propertyCode,
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }
}
