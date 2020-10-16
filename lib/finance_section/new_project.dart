import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewProject extends StatefulWidget {

  @override
  _NewProjectState createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {
  String projectName;

  String category;

  int units;

  var rate;

  DateTime _dateTime;

  int theDay;
  int theMonth;
  int theYear;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(bottom: 150, left: 0),
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            leading: Icon(null),
            title: Text('Create New Project'),
          ),
          body: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //FIRST ROW
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Project Name',style: TextStyle(fontSize: 20),),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                            )]
                        ),
                        width: 250,
                        margin: EdgeInsets.only(left: 0, right: 30, bottom: 15, top: 15),
                        child: TextFormField(
                          onSaved: (context) {
                            setState(() {
                              projectName = context;
                            });
                          },
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                      )
                    ],
                  ),
                  //SECOND ROW
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date',style: TextStyle(fontSize: 20),),
                      InkWell(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030)
                          ).then((date) {
                            setState(()  {
                              _dateTime = date;
                              theYear = _dateTime.year;
                              theMonth = _dateTime.month;
                              theDay = _dateTime.day;
                            });
                          });

                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 0, right: 30, bottom: 15, top: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                              boxShadow: [BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                              )]
                          ),
                          height: 45,
                          width: 250,
                          child: _dateTime == null ? Center(child: Text('Choose Date', textAlign:TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black),))
                              : Center(child: Text('$theYear /$theDay /$theMonth', textAlign:TextAlign.center, style: TextStyle(fontSize: 23, color: Colors.black),)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.indigo[500],
                        onPressed: () {
                          //save info to database
                        },
                        child: Text('Create'),
                      ),
                      RaisedButton(
                        color: Colors.indigo[500],
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                          //clear all typed data and return to project view
                        },
                        child: Text('Cancel'),
                      ),

                    ],
                  )
                ],
              ),
            ),
        ),
        ),
    );
  }
}

