import 'package:adams_app_v_1_0/components/customized_tile.dart';
import 'package:adams_app_v_1_0/finance_section/all_projects_page.dart';
import 'package:adams_app_v_1_0/finance_section/financial_accounts.dart';
import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarThemeColor,
        title: Text('View Projects', style: TextStyle(fontSize: 20,),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.indigo[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomizedTile(title: 'All Projects', pageDestination: AllProjectsPage(),),
                  CustomizedTile(title: 'Project Summary', pageDestination: AllProjectsPage(),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomizedTile(title: 'Project Charts', pageDestination: AllProjectsPage(),),
                  CustomizedTile(title: 'Project Updates', pageDestination: AllProjectsPage(),),
                ],
              ),
            ]
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(Icons.house),
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(
              builder: (context) => FinancialAuditSection()));
        },
      ),
    );
  }
}

class CustomizedButton extends StatelessWidget {
  final String title;
  final Widget pageDestination;

  const CustomizedButton({Key key, this.title, this.pageDestination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => pageDestination));
      },
      child: Container(
        height: 60,
        width: 250,
        margin:EdgeInsets.symmetric(horizontal: 20, vertical: 10) ,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
          )],
          color: Colors.white,
        ),
        child: Center(
          child: Text(
              '$title',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.blue)),
        ),
      ),
    );
  }
}
