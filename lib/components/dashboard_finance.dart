import 'package:adams_app_v_1_0/components/customized_tile.dart';
import 'package:adams_app_v_1_0/finance_section/notices_page.dart';
import 'package:adams_app_v_1_0/finance_section/view_projects.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class DashboardFinance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomizedTile(
          title: 'Projects',
          pageDestination: ViewProjects(),
        ),
        CustomizedTile(
          title: 'Notices',
          pageDestination: NoticesPage(),
        ),
        CustomizedTile(
          title: 'Report',
          pageDestination: MyApp(),
        ),
      ],
    );
  }
}
