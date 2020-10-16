import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/components/location_menu.dart';


class InternalRepairs extends StatefulWidget {
  @override
  _InternalRepairsState createState() => _InternalRepairsState();
}

class _InternalRepairsState extends State<InternalRepairs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarThemeColor,
        elevation: 4,
        title: Text('Accommodation details',  style: TextStyle(fontSize: 22, color: Colors.white),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: bodyBackgroundThemeColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  FloorCard(),
                  WallCard(),
                  DoorCard(),
                  WindowCard(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class FloorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15
          )]
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'FLOORS',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Divider(height: 2, thickness: 2,color: Colors.grey[600]),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('FLOOR TYPE'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'FLOOR',
                      contextList: floors,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('CONDITION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'CONDITION',
                      contextList: condition,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('RECOMMENDATIONS'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'RECOMMENDATION',
                      contextList: recommendation,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15
          )]
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'WALL',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Divider(height: 2, thickness: 2,color: Colors.grey[600]),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('WALL TYPE'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'WALL',
                      contextList: wall,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CONDITION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'CONDITION',
                      contextList: condition,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('RECOMMENDATION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'RECOMMENDATION',
                      contextList: recommendation,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DoorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15
          )]
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'DOOR',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Divider(height: 2, thickness: 2,color: Colors.grey[600]),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('DOOR TYPE'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'DOOR',
                      contextList: door,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CONDITION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'CONDITION',
                      contextList: condition,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('RECOMMENDATION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'RECOMMENDATION',
                      contextList: recommendation,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WindowCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15
          )]
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'WINDOW',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('WINDOW TYPE'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'WINDOW',
                      contextList: window,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CONDITION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'CONDITION',
                      contextList: condition,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('RECOMMENDATION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'RECOMMENDATION',
                      contextList: recommendation,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CeilingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15
          )]
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'CEILING',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CEILING TYPE'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'CEILING',
                      contextList: ceiling,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CONDITION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'CONDITION',
                      contextList: condition,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('RECOMMENDATION'),
                  Container(
                    width: MediaQuery.of(context).size.width* 0.3,
                    height: 60,
                    child: DropDown(
                      hintText: 'RECOMMENDATION',
                      contextList: recommendation,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
List floors = [
  'Tile',
  'PVC Tiles',
  'Screed',
  'Terrace'
];
List condition = [
  'Bad',
  'Poor',
  'Fair',
  'Good'
];
List wall = [
  'Plaster',
  'Paint',
  'Skirting',
  'Tiles'
];
List door = [
  'Paneled',
  'Armoured',
  'Metal Framed',
  'Battered',
  'Flush Veneer',
  'Wood Frames'
];
List window = [
  'Louvre',
  'Sliding',
  'Battered',
  'Casement',
  'Pivoted',
  'Sash'
];
List ceiling = [
  'Asbestos',
  'PVC Strip',
  'POP',
  'Plywood'
];
List recommendation = [
  'Replace',
  'Repair',
];
List recommendationWall = [
  'Replace',
  'Repair','Repaint',
];
