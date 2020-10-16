import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/components/location_menu.dart';

class BuildingTypePage extends StatefulWidget {
  @override
  _BuildingTypePageState createState() => _BuildingTypePageState();
}

class _BuildingTypePageState extends State<BuildingTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Property Code'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Building Type', style: TextStyle(fontSize: 18),),
                ),
                Container(
                  width: MediaQuery.of(context).size.width* 0.5,
                  height: 60,
                  child: DropDown(
                    hintText: 'Select Building Type',
                    contextList: buildingType,
                  ),
                ),
              ],
            ),

            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width* 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text('Accommodation details',  style: TextStyle(fontSize: 18, color: Colors.white),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.5,
                    height: 60,
                    child: DropDown(
                            hintText: 'Number of rooms',
                            contextList: bedNum,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.5,
                    height: 60,
                    child: DropDown(
                            hintText: 'Number of Toilets',
                            contextList: toiletBath,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.5,
                    height: 60,
                    child: DropDown(
                            hintText: 'Number of Kitchens',
                            contextList: kitchenNum,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.5,
                    height: 60,
                    child: DropDown(
                            hintText: 'Number of Stores',
                            contextList: storeNum,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.5,
                    height: 60,
                    child: DropDown(
                            hintText: 'Number of Shops',
                            contextList: shopNum,
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List buildingType = [
  'Bungalow',
  'Semi-detailed',
  'Terrace',
  'Block of 4 flats',
  'Storey House',
];

List bedNum =[
  1,2,3,4,5,6
];
List toiletBath =[
  1,2,3,4,5
];
List sittingNum =[
  1,2
];
List shopNum =[
  1,2,3,4
];
List kitchenNum =[
  1,2,3,4
];
List storeNum =[
  1,2,3,4
];
