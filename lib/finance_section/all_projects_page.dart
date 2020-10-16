import 'package:adams_app_v_1_0/database_and_info/information_bullets.dart';
import 'package:adams_app_v_1_0/finance_section/new_project.dart';
import 'package:adams_app_v_1_0/finance_section/project_view_page.dart';
import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarThemeColor,
        title: Text('All Projects'),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
            itemCount: projectList.length,
            itemBuilder:
                (context, index) => ProjectItemCard(
                  index: index+1,
                  projectName: projectList[index].projectName,
                  destination: SelectedProjectView(project: projectList[index],),
                ),
      )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Create a new Project',
        backgroundColor: appBarThemeColor,
        onPressed: () {
          showModalBottomSheet(
            elevation: 10,
            enableDrag: true,
            isDismissible: true,
              context: context,
              builder: (context) => NewProject()
              );
                  },
        elevation: 10,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ProjectItemCard extends StatelessWidget {
  final String projectName;
  final int index;
  final Widget destination;
  const ProjectItemCard({Key key, this.projectName, this.index, this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination)
        );
      },
      child: Container(
        child: Row(
          children: [
            Text(
              '  $index  . ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),),
            SizedBox(width: 5,),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(right: 10, top: 10),
                padding: EdgeInsets.only(left: 10),
                color: defaultTileColor,
                child: Row(
                  children: [
                    Text(
                      projectName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        icon: Icon(Icons.more_vert, color: Colors.white,),
                        onPressed: () {
                        })
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
