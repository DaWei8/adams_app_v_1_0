import 'package:flutter/material.dart';


class SideDrawer extends StatelessWidget {
  final Widget drawerList;
  const SideDrawer({Key key, @required this.drawerList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              child: drawerList,
            )
          ],
        ),
      ),
    );
  }
}