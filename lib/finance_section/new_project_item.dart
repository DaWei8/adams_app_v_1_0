import 'package:flutter/material.dart';

class NewProjectItem extends StatefulWidget {
  @override
  _NewProjectItemState createState() => _NewProjectItemState();
}

class _NewProjectItemState extends State<NewProjectItem> {
  String item;
  String category;
  int units;
  var rate;
  DateTime _dateTime;
  int theDay;
  int theMonth;
  int theYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Add New Item'),
          centerTitle: true,
          leading: Icon(null),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            color: Colors.purple[100],
            child: Column(
              children: [
                //FIRST ROW
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name of item:',style: TextStyle(fontSize: 20),),
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
                            item = context;
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
                    Text('Number of Units:',style: TextStyle(fontSize: 20),),
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
                        onFieldSubmitted:(context) {
                          setState(() {
                            units = context as int;
                            units = units.toInt();
                          });
                          print((units*units));
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
                //THIRD ROW
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cost per Unit:',style: TextStyle(fontSize: 20),),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                          )]
                      ),
                      margin: EdgeInsets.only(left: 0, right: 30, bottom: 15, top: 15),
                      width: 250,
                      child: TextFormField(
                        onSaved: (context) {
                          setState(() {
                            rate = context;
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('date:',style: TextStyle(fontSize: 20),),
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
                              color: Colors.black26,
                              blurRadius: 5,
                            )]
                        ),
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.65,
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
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        //save info to database and return to project view
                      },
                      child: Text('Save'),
                    ),
                    RaisedButton(
                      color: Colors.blue,
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
