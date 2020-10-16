import 'package:adams_app_v_1_0/finance_section/financial_accounts.dart';
import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/action%20pages/referral_page.dart';
import 'package:adams_app_v_1_0/main.dart';
import 'package:adams_app_v_1_0/screens/pages/property_account_history.dart';
import 'dashboard_item_card.dart';

class DashBoardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardItemCard(
            icon: Icon(Icons.home, color: Colors.orange,),
            label: 'Home',
            pageDestination: MyApp()),
        DashboardItemCard(
            icon: Icon(Icons.person, color: Colors.orange,),
            label: 'LandLords/Tenants',
            pageDestination: ReferralPage()),
        DashboardItemCard(
            icon: Icon(Icons.border_all, color: Colors.orange,),
            label: 'Property List',
            pageDestination: PropertyAccountHistory()),
        DashboardItemCard(
            icon: Icon(Icons.bar_chart, color: Colors.orange,),
            label: 'Property Management',
            pageDestination: FinancialAuditSection()),

      ],
    );
  }
}
