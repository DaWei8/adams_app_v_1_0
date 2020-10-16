import 'package:adams_app_v_1_0/components/dashboard_finance.dart';
import 'package:adams_app_v_1_0/themedata/color_themedata.dart';

import 'package:flutter/material.dart';

class FinancialAuditSection extends StatefulWidget {
  @override
  _FinancialAuditSectionState createState() => _FinancialAuditSectionState();
}

class _FinancialAuditSectionState extends State<FinancialAuditSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarThemeColor,
        centerTitle: true,
        title: Text('Property Management', style: TextStyle(fontSize: 20),),
      ),
      body: Center(child: DashboardFinance()),
    );
  }
}
