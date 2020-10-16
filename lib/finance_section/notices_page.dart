import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/material.dart';

class NoticesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundThemeColor,
      appBar: AppBar(
        backgroundColor: appBarThemeColor,
        title: Text('Notices'),
        centerTitle: true,
      ),
    );
  }
}
