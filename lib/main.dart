import 'package:adams_app_v_1_0/components/dashboard_list.dart';
import 'package:adams_app_v_1_0/finance_section/financial_accounts.dart';
import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/pages/home_body.dart';
import 'components/side_drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawerScrimColor: Colors.black54,
      backgroundColor: bodyBackgroundThemeColor,
      drawerEnableOpenDragGesture: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 8,
        actionsIconTheme: IconThemeData(color: Colors.black, size: 40),
        backgroundColor: appBarThemeColor,
        title: Text('ADAMS'),
        centerTitle: true,
      ),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width * 0.5,
      drawer: SideDrawer(
        drawerList: DashBoardList(),),
      body: HomePage(),
      persistentFooterButtons: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButtonNav(
                icon: Icon(Icons.calendar_today_sharp, color: Colors.orange,),
                pageDestination: MyApp(),
              ),
              IconButtonNav(
                icon: Icon(Icons.access_time_rounded, color: Colors.orange,),
                pageDestination: MyApp(),
              ),
              IconButtonNav(
                icon: Icon(Icons.sticky_note_2_outlined, color: Colors.orange,),
                pageDestination: MyApp(),
              ),
              IconButtonNav(
                icon: Icon(Icons.bar_chart, color: Colors.orange,),
                pageDestination: FinancialAuditSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IconButtonNav extends StatelessWidget {
  final Widget pageDestination;
  final Icon icon;
  const IconButtonNav({Key key, this.pageDestination, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => pageDestination,
          )
          );
        }
    );
  }
}

// class BottomBar extends StatelessWidget {
//   final Icon selectedIcon;
//
//   BottomBar({this.selectedIcon});
//
//   @override
//   Widget build(BuildContext context) {
//
//     Color iconColor = Colors.white;
//     double iconSize = 20.0;
//     return Container(
//       child: Icon(, color: iconColor, size: iconSize,),
//     );
//   }
// }
