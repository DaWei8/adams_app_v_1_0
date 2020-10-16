import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/components/property_tenant_history_card.dart';
import 'package:adams_app_v_1_0/models/property_information.dart';


class PropertyAccountHistory extends StatefulWidget {
  @override
  _PropertyAccountHistoryState createState() => _PropertyAccountHistoryState();
}

class _PropertyAccountHistoryState extends State<PropertyAccountHistory> {
  @override
  Widget  build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bodyBackgroundThemeColor,
        appBar : AppBar(
          elevation: 0,
          backgroundColor: appBarThemeColor,
        centerTitle: true,
        title: Text('Property/Tenant\nHistory',
          textAlign: TextAlign.center,
          style: TextStyle(),),
        actions: [
          InkWell(
              onTap: () {print('searching for beans...');},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(  Icons.search),
            ),
          )
        ],
      ),
      body : Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.87,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: propertyList.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8.0),
                      width: 60,
                        child: Text(
                          '${index + 1} .',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PropertyTenantHistoryCard(propertyInfo: propertyList[index],),
                    ),

                  ],
                ),
                ),
            ),
          ],
        ),
      ),
      );
    }
}


