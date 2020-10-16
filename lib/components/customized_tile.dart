import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/material.dart';

class CustomizedTile extends StatelessWidget {
  final String title;
  final Widget pageDestination;

  const CustomizedTile({Key key, this.title, this.pageDestination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => pageDestination));
      },
      child: Container(
        height: 170,
        width: 170,
        padding:EdgeInsets.all(10),
        margin:EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
          )],
          color: defaultTileColor,
        ),
        child: Center(
          child: Text(
              '$title',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
